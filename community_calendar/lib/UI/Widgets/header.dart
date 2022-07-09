import 'package:community_calendar/UI/Widgets/button.dart';
import 'package:community_calendar/constants.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.03,
          MediaQuery.of(context).size.width * 0.03,
          MediaQuery.of(context).size.width * 0.03,
          MediaQuery.of(context).size.width * 0.03,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Constants.heading(
                text: 'Community Calendar',
                color: Colors.white,
                fontSize: 20,
                weight: FontWeight.w700),
            Row(
              children: [
                CFVButton(
                  text: 'Login',
                  onpressed: () {
                    context.vxNav.push(Uri.parse('/login'));
                  },
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.04,
                ),
                CFVButton(
                  text: 'Signup',
                  onpressed: () {
                    context.vxNav.push(Uri.parse('/signup'));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
