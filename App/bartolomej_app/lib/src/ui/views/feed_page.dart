import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_app/src/core/bloc/bartolomej/bartolomej_bloc.dart';
import 'package:template_app/src/core/bloc/feed/feed_bloc.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _MainPage();
}

class _MainPage extends State<FeedPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Nakrmit"),
            backgroundColor: Colors.purple,
          ),
          body: Column(children: [
            DragTarget(
              builder: (BuildContext comtext, List<dynamic> accepted,
                  List<dynamic> rejected) {
                return Container(
                  decoration: const BoxDecoration(color: Colors.grey),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                );
              },
              onAccept: (Color color) {
                BlocProvider.of<FeedBloc>(context).add(const Feed());
              },
            ),
            const Divider(
              color: Colors.red,
              thickness: 5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Draggable(
              data: Colors.grey,
              feedback: SizedBox(
                height: 150,
                width: 150,
                child: Image.asset("assets/jidlo.png"),
              ),
              child: SizedBox(
                height: 150,
                width: 150,
                child: Image.asset("assets/jidlo.png"),
              ),
            ),
          ])),
    );
  }
}
