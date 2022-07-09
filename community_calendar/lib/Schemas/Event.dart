import 'package:community_calendar/Schemas/location.dart';

class Event {

   Event({
    this.description = '',
    this.title = '',
  });

  String description;
  String title;
  DateTime? start;
  DateTime? end;
  Location? location;

}