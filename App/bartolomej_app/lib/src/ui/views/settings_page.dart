import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:template_app/constants.dart' as constants;
import 'package:template_app/src/core/bloc/bartolomej/bartolomej_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Text("settings_page_laber".tr()),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.width * 0.35,
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
              onPressed: () {
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
            ),
          ),
        ],
      )),
    ));
  }
}
