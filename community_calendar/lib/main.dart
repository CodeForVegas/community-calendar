import 'package:community_calendar/UI/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Community Calendar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(routes: {
        '/': (_, __) => const MaterialPage(child: HomeScreen()),
        '/login': (_, __) => const MaterialPage(child: HomeScreen()),
        '/signup': (_, __) => const MaterialPage(child: HomeScreen()),
      }),
    );
  }
}
