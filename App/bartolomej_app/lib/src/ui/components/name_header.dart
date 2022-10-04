import 'package:flutter/material.dart';
import 'package:template_app/constants.dart' as constants;
import 'package:template_app/src/ui/views/settings_page.dart';

class NameHeader extends StatelessWidget {
  final String title;
  const NameHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: constants.mainColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            title,
                            style: const TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()),
                    );
                  },
                  icon: const Icon(Icons.settings)),
            ),
          ],
        ),
      ],
    );
  }
}
