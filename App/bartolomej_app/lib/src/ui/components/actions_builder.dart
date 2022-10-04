import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:template_app/constants.dart' as constants;
import 'package:template_app/src/ui/views/feed_page.dart';
import 'package:template_app/src/ui/views/main_page.dart';

class ActionsBuilder extends StatelessWidget {
  const ActionsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 140,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          height: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: constants.mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // <-- Radius
              ),
            ),
            child: Text(
              "feed_button_label".tr(),
              style: const TextStyle(fontSize: 23, color: Colors.black),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FeedPage()),
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.35,
              height: 70,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: constants.mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                child: Text(
                  "emotions_button_label".tr(),
                  style: const TextStyle(fontSize: 23, color: Colors.black),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OldBody()),
                  );
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.35,
              height: 70,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: constants.mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                child: const Text(
                  "",
                  style: TextStyle(fontSize: 23, color: Colors.black),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
