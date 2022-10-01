#ifndef EMOTIONS_H_
#define EMOTIONS_H_
#include "FaceData.h"


const unsigned char* happyFaces[] = {happy1, happy2, happy3, happy4 };
const unsigned char* sadFaces[] = {sad1, sad2, sad3, sad4, sad5 };
const unsigned char* cryFaces[] = {cry1, cry2 };
const unsigned char* kawaiFaces[] = {kawai1, kawai2 };
const unsigned char* positiveFaces[] = {hug, love1, party };
const unsigned char* animalFaces[] = {dog, bear };
const unsigned char* randomFaces[] = {fight, cringe, party };



const unsigned char* getRandomFace(const unsigned char* faces[]){
  int pickedIndex = random(sizeof faces);
  return faces[pickedIndex];
}

const unsigned char *getEmotion(int emotionId)
{
    switch (emotionId)
    {
    case 1:
        return happy1;
        break;

    case 2:
        return happy2;
        break;

    case 3:
        return kawai1;
        break;

    case 4:
        return kawai2;
        break;

    case 5:
        return hug;
        break;

    case 6:
        return bear;
        break;

    case 7:
        return cringe;
        break;

    case 8:
        return dog;
        break;
    default:
        break;
        // code block
    }
}

#endif
