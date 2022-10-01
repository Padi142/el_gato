import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_app/src/core/bloc/bartolomej/bartolomej_bloc.dart';
import 'package:template_app/src/core/models/mood_model.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:template_app/src/ui/views/feed_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              title: const Text("Bartoloměj"),
              backgroundColor: Colors.purple,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Alert(
                        context: context,
                        type: AlertType.none,
                        title: "Zadat",
                        content: Column(
                          children: [
                            TextField(
                              controller: myController,
                              decoration: const InputDecoration(),
                            ),
                          ],
                        ),
                        buttons: [
                          DialogButton(
                            onPressed: () async {
                              if (!myController.text.contains(" ")) {
                                BlocProvider.of<BartolomejBloc>(context)
                                    .add(ChangeIp(ip: myController.text));
                                myController.text = "";
                              }
                              Navigator.pop(context);
                            },
                            width: 120,
                            child: const Text(
                              "Zadat",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ],
                      ).show();
                    },
                    child: const Icon(Icons.settings),
                  ),
                )
              ]),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 150,
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: moods.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<BartolomejBloc>(context)
                                .add(ChangeFace(face: moods[index]));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.purpleAccent,
                              padding: const EdgeInsets.all(8),
                              textStyle: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          child: Text(
                            moods[index].faceName,
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FeedPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purpleAccent,
                        padding: const EdgeInsets.all(8),
                        textStyle: const TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold)),
                    child: Text("Nakrmit"),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  final List<MoodModel> moods = [
    const MoodModel(faceName: "happy1", faceId: "1", message: "mnau mnau"),
    const MoodModel(faceName: "happy2", faceId: "2", message: "kockokluk"),
    const MoodModel(faceName: "kawai1", faceId: "3", message: "Bonjour"),
    const MoodModel(faceName: "kawai2", faceId: "4", message: "El gatoo"),
    const MoodModel(faceName: "hug", faceId: "5", message: "wb a hug?"),
    const MoodModel(faceName: "bear", faceId: "6", message: "brum brum"),
    const MoodModel(faceName: "cringe", faceId: "7", message: "you said what?"),
    const MoodModel(faceName: "doge", faceId: "8", message: "hafhaf"),
  ];
}
