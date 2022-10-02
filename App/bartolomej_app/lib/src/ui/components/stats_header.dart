import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class StatsHeader extends StatelessWidget {
  final String name;
  final int mood;
  final int hunger;
  const StatsHeader(
      {required this.name,
      required this.mood,
      required this.hunger,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(fontSize: 33),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "hunger_label".tr(),
                  style: const TextStyle(fontSize: 22),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: 10,
                  child: LinearProgressIndicator(
                    value: hunger / 100,
                    semanticsLabel: "100",
                    semanticsValue: hunger.toString(),
                    color: Colors.brown,
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 60,
            ),
            Column(
              children: [
                Text(
                  "mood_label".tr(),
                  style: const TextStyle(fontSize: 22),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: 10,
                  child: LinearProgressIndicator(
                    semanticsLabel: "10",
                    semanticsValue: mood.toString(),
                    value: mood / 10,
                    color: Colors.green,
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
