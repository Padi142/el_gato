#include "FaceData.h"
#include "emotions.h"

#include <GxEPD2_BW.h>
#include <GxEPD2_3C.h>

GxEPD2_BW<GxEPD2_270, GxEPD2_270::HEIGHT> display(GxEPD2_270(/*CS=*/ 15, /*DC=*/ 4, /*RST=*/ 2, /*BUSY=*/ 5));

#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>
#include <Arduino_JSON.h>

#include "index.h"

// Screen used
#include "bitmaps/Bitmaps176x264.h" // 2.7"  b/w/r
#include "Fonts/Cantarell_Regular_euro8pt8b.h"
#include "Fonts/Cantarell_Bold_euro9pt8b.h"
#include "Fonts/FreeMonoBold_euro14pt8b.h"
#include "Fonts/Cantarell_Bold_euro16pt8b.h"

#define FONT_TINY Cantarell_Regular_euro8pt8b
#define FONT_SMALL Cantarell_Bold_euro9pt8b
#define FONT_NORMAL FreeMonoBold_euro14pt8b
#define FONT_BIG Cantarell_Bold_euro16pt8b

/*Put your SSID & Password*/
const char* ssid = "Pikes";  // Enter SSID here
const char* password = "sobiflotila";  //Enter Password here

ESP8266WebServer server(80);
IPAddress myIP;

//Bartolomej variables
int hunger = 2;
int mood = 28;
int currentFace = 10;

int maxhunger = 10;

int delayMax = 20;
int currentDelay = 0;

void setup()
{
  Serial.begin(115200);
  display.init(115200);
  display.setRotation(1);
  
  display.setFont(&FONT_NORMAL);
  display.setTextColor(GxEPD_BLACK);


  //connect to your local wi-fi network
  WiFi.begin(ssid, password);

  //check wi-fi is connected to wi-fi network
  while (WiFi.status() != WL_CONNECTED) {
  delay(1000);
  Serial.print(".");
  }
  
  myIP= WiFi.localIP();
  Serial.print("IP: ");  Serial.println(WiFi.localIP());

  server.on("/", handleRoot);
  server.on("/change_face", handle_face_change);
  server.on("/bottom_text", handle_text_change);
  server.on("/status", handle_status);
  server.on("/feed", handle_feed);
  server.on("/pet", handle_pet);
  server.onNotFound(handle_NotFound);

  server.begin();
  Serial.println("HTTP server started");
     display.firstPage();
  do
 {
   display.fillScreen(GxEPD_WHITE);
   display.setCursor(1, 10);
   display.setFont(&FONT_TINY);
   display.print("Bartolomej 0.1 -    " + myIP.toString() );
  } while (display.nextPage());
  printHunger();
}

void loop(void) {
  server.handleClient();
  currentDelay++;
  delay(100);
  
  if(currentDelay == delayMax){
    currentDelay = 0;
    int randomNumber=random(50);
    if(hunger !=0 && randomNumber == 5){
      hunger--;
      printHunger();
    }
    if(hunger >= 5 && mood < 100){
      mood++;
      printHunger();
     }else if (mood > 0 && mood != 100){
      mood--;
      printHunger();
     }

     if(mood % 5 == 0)
    {
      printFace(getFaceByEmotion(mood));
    }
  }
 
}

const unsigned char *getFaceByEmotion(int mood){
  if(mood > 98){
    return getRandomFace(kawaiFaces);
  }else if (mood >44){
    return getRandomFace(positiveFaces);
  }else if (mood > 20){
    return getRandomFace(sadFaces);
  }else{
    return getRandomFace(cryFaces);
  }
}


void printFace( const unsigned char face[]){
    display.setPartialWindow(0, 50,264 , 145);
    display.firstPage();
  do
 {
    display.fillScreen(GxEPD_WHITE);
    display.drawBitmap(33, 50, face, 201, 77, GxEPD_BLACK);


  } while (display.nextPage());
}
void printHunger( ){
    display.setPartialWindow(0, 20,264 , 20);
    display.firstPage();
  do
 {
    display.fillScreen(GxEPD_WHITE);
    display.setCursor(1, 35);
    display.setFont(&FONT_SMALL);
    display.print("Hunger:    " + String(hunger)+ " / 10     Mood:   " +String(mood)+"/100");

  } while (display.nextPage());
}
void printBottomText( char text[]){
    display.setPartialWindow(0, 145,264 , 176);
    display.firstPage();
  do
 {
    display.fillScreen(GxEPD_WHITE);
    display.setFont(&FONT_NORMAL);
    display.setCursor(10, 165);
    display.print(text);


  } while (display.nextPage());
}
void handle_face_change() {
  for (uint8_t i = 0; i < server.args(); i++)
  {
    if (server.argName(i) == "face")
    {
      printFace(getEmotion(server.arg(i).toInt()));
      server.send(200, "text/plain", "mnau"); 
    }
   
    else
    {
       server.send(400, "text/plain", "error"); 
    }
  }
}
void handle_text_change() {
  for (uint8_t i = 0; i < server.args(); i++)
  {
    if (server.argName(i) == "text")
    {
       String str = server.arg(i); 

      // Length (with one extra character for the null terminator)
      int str_len = str.length() + 1; 

      // Prepare the character array (the buffer) 
      char char_array[str_len];

      // Copy it over 
      str.toCharArray(char_array, str_len);
      printBottomText(char_array);
      server.send(200, "text/plain", "mnau"); 
    }
   
    else
    {
       server.send(400, "text/plain", "error"); 
    }
  }
}
void handle_feed() {
  for (uint8_t i = 0; i < server.args(); i++)
  {
    if (server.argName(i) == "amount")
    {
      if(hunger != maxhunger)
      {
      hunger = hunger + server.arg(i).toInt();
      printHunger();
      server.send(200, "text/plain", "mnau"); 
      printFace(happy1);
      printBottomText("Thanks!");

      if(hunger > 8)
      {
       delay(3000);
       printFace(hug);
       printBottomText("yummy");
       }
      
      }else{
        server.send(400, "text/plain", "max hunger"); 
      }
      }
    else
    {
       server.send(400, "text/plain", "error"); 
    }
  }
}
void handle_pet() {
  for (uint8_t i = 0; i < server.args(); i++)
  {
    if (server.argName(i) == "amount")
    {
      mood = mood + server.arg(i).toInt();
      printHunger();
      server.send(200, "text/plain", "mnau"); 
    }
   
    else
    {
       server.send(400, "text/plain", "error"); 
    }
  }
}
void handle_status() {
   JSONVar myArray;
  myArray[0] = mood;
  myArray[1] = hunger;
  
  String jsonString = JSON.stringify(myArray);
  server.send(200, "application/json", jsonString); 
}

void handleRoot() {
 String s = MAIN_page; //Read HTML contents
 server.send(200, "text/html", s); //Send web page
}

void handle_NotFound(){
  server.send(404, "text/plain", "Not found");
}
