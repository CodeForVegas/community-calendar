import 'package:community_calendar/Schemas/event.dart';
import 'package:community_calendar/UI/Univeral_Widgets/button.dart';
import 'package:community_calendar/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreenTile extends StatelessWidget {
  HomeScreenTile({Key? key, required this.event}) : super(key: key);

  Event event;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.2,
          MediaQuery.of(context).size.width * 0.01,
          MediaQuery.of(context).size.width * 0.2,
          MediaQuery.of(context).size.width * 0.01),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1)),
        height: MediaQuery.of(context).size.width * 0.18,
        width: MediaQuery.of(context).size.width * 0.3,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.width * 0.02),
            Column(
              children: [
                Constants.heading(
                    text: event.title, fontSize: 22, weight: FontWeight.bold),
                Constants.text(
                    text: event.description,
                    fontSize: 18,
                    weight: FontWeight.w400),
                SizedBox(height: MediaQuery.of(context).size.width * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Constants.text(
                        text: event.start.toString(),
                        fontSize: 18,
                        weight: FontWeight.w400),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(MdiIcons.arrowRightBold),
                    ),
                    Constants.text(
                        text: event.end.toString(),
                        fontSize: 18,
                        weight: FontWeight.w400),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Constants.text(text: event.location?.address1 ?? ''),
                          Constants.text(text: event.location?.address2 ?? ''),
                          Constants.text(text: event.location?.state ?? ''),
                          Constants.text(text: event.location?.city ?? ''),
                          Constants.text(text: event.location?.zipcode ?? ''),
                        ],
                      ),
                      CFVButton(text: 'Add To Calendar'),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
