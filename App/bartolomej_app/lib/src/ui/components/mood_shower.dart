import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MoodShower extends StatelessWidget {
  final int moodIndex;
  final String moodName;
  const MoodShower(
      {required this.moodIndex, required this.moodName, super.key});

  @override
  Widget build(BuildContext context) {
    String imgName = getFaceFileName(moodName, moodIndex);
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Image.asset(
          "assets/faces/$imgName.png",
          scale: 0.65,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          getMoodName(moodName),
          style: const TextStyle(fontSize: 29),
        ).tr(),
      ],
    );
  }
}

String getFaceFileName(String moodName, int moodIndex) {
  switch (moodName) {
    case "kawai":
      return kawaiFacecs[moodIndex];
    case "happy":
      return happyFaces[moodIndex];
    case "sad":
      return sadFaces[moodIndex];
    case "cry":
      return cryFaces[moodIndex];
    default:
      return "hug";
  }
}

List<String> kawaiFacecs = ["kawai1", "kawai2"];
List<String> cryFaces = ["cry1", "cry2"];
List<String> sadFaces = ["sad1", "sad2", "sad3", "sad4", "sad5"];
List<String> happyFaces = ["happy1", "happy2", "happy3", "happy4"];

List<String> faces = [
  "happy1",
  "happy2",
  "happy3",
  "happy4",
  "sad1",
  "sad2",
  "sad3",
  "sad4",
  "sad5",
  "cry1",
  "cry2",
  "kawai1",
  "kawai2",
  "hug",
  "love1",
  "party",
  "dog",
  "bear",
  "fight",
  "cringe",
  "party"
];

String getMoodName(String moodName) {
  switch (moodName) {
    case "kawai":
      return "kawai_face_label";
    case "happy":
      return "happy_face_label";
    case "sad":
      return "sad_face_label";
    case "cry":
      return "cry_face_label";
    default:
      return "unknown_mood_label";
  }
}
