import 'package:flutter/material.dart';
import 'package:resmi_tatiller/router/app_router.dart';
import 'package:resmi_tatiller/views/home/home_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: const HomeView(),
      onGenerateRoute: _appRouter.routeChanger,
    );
  }
}
