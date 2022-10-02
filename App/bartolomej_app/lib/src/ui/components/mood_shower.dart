import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MoodShower extends StatelessWidget {
  final int mood;
  final String imgName;
  const MoodShower({required this.mood, required this.imgName, super.key});

  @override
  Widget build(BuildContext context) {
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
          getMoodName(mood),
          style: const TextStyle(fontSize: 29),
        ).tr(),
      ],
    );
  }
}

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

String getMoodName(int mood) {
  if (mood > 98) {
    return "kawai_face_label";
  } else if (mood > 44) {
    return "happy_face_label";
  } else if (mood > 20) {
    return "sad_face_label";
  } else {
    return "cry_face_label";
  }
}
