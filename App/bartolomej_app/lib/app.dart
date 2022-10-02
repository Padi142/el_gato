import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_app/src/core/bloc/bartolomej/bartolomej_bloc.dart';
import 'package:template_app/src/core/bloc/feed/feed_bloc.dart';
import 'package:template_app/src/ui/views/main_page.dart';

class BartolomejApp extends StatelessWidget {
  const BartolomejApp({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<BartolomejBloc>(
            create: (BuildContext context) => BartolomejBloc(),
          ),
          BlocProvider<FeedBloc>(
            create: (BuildContext context) => FeedBloc(),
          ),
        ],
        child: MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          title: "Bartolomej",
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            canvasColor: Colors.purpleAccent,
          ),
          home: const MainPage(),
        ));
  }
}
