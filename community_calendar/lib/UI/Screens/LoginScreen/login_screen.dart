import 'package:community_calendar/UI/Univeral_Widgets/button.dart';
import 'package:community_calendar/UI/Univeral_Widgets/header.dart';
import 'package:community_calendar/UI/Univeral_Widgets/textfield.dart';
import 'package:community_calendar/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          shrinkWrap: true,
          children: [
            Header(
              showLogin: false,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Constants.heading(
                text: 'Login to the Community Calendar', fontSize: 32),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CFVTextField(
                    hintText: 'Email',
                    borderWidth: 1,
                    horizontalPadding: MediaQuery.of(context).size.width * 0.3,
                    verticalPadding: MediaQuery.of(context).size.width * 0.02,
                    suffixIcon: MdiIcons.account,
                    borderRadius: 3,
                    onChanged: (text) {},
                    onSumbit: (text) {},
                  ),
                  CFVTextField(
                    hintText: 'Password',
                    borderWidth: 1,
                    horizontalPadding: MediaQuery.of(context).size.width * 0.3,
                    verticalPadding: MediaQuery.of(context).size.width * 0.02,
                    suffixIcon: MdiIcons.eye,
                    isObscure: true,
                    borderRadius: 3,
                    onChanged: (text) {},
                    onSumbit: (text) {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            CFVButton(
              text: 'Login',
            )
          ],
        ),
      ),
    );
  }
}
