import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:template_app/constants.dart' as constants;

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
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: constants.secondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    "hunger_label".tr(),
                    style: const TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: 10,
                    child: LinearProgressIndicator(
                      value: hunger / 10,
                      semanticsLabel: "100",
                      semanticsValue: hunger.toString(),
                      color: Colors.brown,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 60,
            ),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: constants.secondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
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
                      value: mood / 100,
                      color: Colors.pink,
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
