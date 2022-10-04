import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_app/src/core/bloc/bartolomej/bartolomej_bloc.dart';
import 'package:template_app/src/core/bloc/bartolomej/bartolomej_state.dart';
import 'package:template_app/src/core/models/mood_model.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:template_app/src/core/models/status_model.dart';
import 'package:template_app/src/ui/components/actions_builder.dart';
import 'package:template_app/src/ui/components/mood_shower.dart';
import 'package:template_app/src/ui/components/name_header.dart';
import 'package:template_app/src/ui/components/stats_header.dart';
import 'package:template_app/src/ui/views/feed_page.dart';
import 'package:template_app/constants.dart' as constants;
import 'package:template_app/src/ui/views/settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  void initState() {
    BlocProvider.of<BartolomejBloc>(context).add(const LoadStatus());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BlocBuilder<BartolomejBloc, BartolomejState>(
      builder: ((context, state) {
        return state.maybeWhen(loadedStatus: ((status) {
          return NewBody(status: status);
        }), loadingError: () {
          return const LoadingErrorBody();
        }, loading: () {
          return const LoadingIndicator();
        }, orElse: () {
          return Container();
        });
      }),
    ));
  }
}

class NewBody extends StatelessWidget {
  final StatusModel status;
  const NewBody({required this.status, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const NameHeader(
              title: "Bartoloměj",
            ),
            StatsHeader(
                name: "Bartoloměj", mood: status.mood, hunger: status.hunger),
            MoodShower(
              moodIndex: status.emotionIndex,
              moodName: status.emotion,
            ),
            const ActionsBuilder(),
          ],
        ),
      ),
    ));
  }
}

class LoadingErrorBody extends StatelessWidget {
  const LoadingErrorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "status_loading_error".tr(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.60,
            height: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: constants.mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.refresh,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "try_again_button_label".tr(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 21, color: Colors.black),
                  ),
                ],
              ),
              onPressed: () {
                BlocProvider.of<BartolomejBloc>(context)
                    .add(const LoadStatus());
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.40,
            height: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: constants.mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "go_to_settings_button_label".tr(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 21, color: Colors.black),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}

class OldBody extends StatelessWidget {
  final myController = TextEditingController();

  OldBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            style: TextStyle(color: Colors.white, fontSize: 20),
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
                      MaterialPageRoute(builder: (context) => const FeedPage()),
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
        ));
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
