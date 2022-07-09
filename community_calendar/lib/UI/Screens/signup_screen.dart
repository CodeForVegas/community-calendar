import 'package:community_calendar/UI/Widgets/header.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [ Header(showSignup: false,)],
      ),
    );
  }
}
