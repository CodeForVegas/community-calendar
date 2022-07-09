import 'package:community_calendar/UI/Univeral_Widgets/header.dart';
import 'package:community_calendar/UI/Univeral_Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Header(),
          CFVTextField(
            hintText: 'Search....',
            borderWidth: 1,
            horizontalPadding: MediaQuery.of(context).size.width * 0.3,
            verticalPadding: MediaQuery.of(context).size.width * 0.02,
            suffixIcon: MdiIcons.magnify,
            borderRadius: 3,
            onChanged: (text) {},
            onSumbit: (text) {},
          )
        ],
      ),
    );
  }
}
