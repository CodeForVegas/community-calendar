import 'package:community_calendar/Schemas/event.dart';
import 'package:community_calendar/Schemas/location.dart';
import 'package:community_calendar/UI/Univeral_Widgets/header.dart';
import 'package:community_calendar/UI/Univeral_Widgets/textfield.dart';
import 'package:community_calendar/UI/Widgets/home_tile.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (index, builder) {
                return HomeScreenTile(
                    event: Event(
                        title: 'Test Title',
                        description: 'Flutter web is good unless your Darius',
                        start: DateTime.now(),
                        end: DateTime.now().add(const Duration(hours: 3)),
                        location: Location(
                            address1: '300 South 4th',
                            address2: 'Suite 180',
                            state: 'Nevada',
                            city: 'Las Vegas',
                            zipcode: '89104')));
              },
            ),
          )
        ],
      ),
    );
  }
}
