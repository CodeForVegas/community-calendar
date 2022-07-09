import 'package:community_calendar/Schemas/event.dart';

class Calendar {

  Calendar({
    this.tags = const [],
    this.description = '',
    this.events = const [],
    this.name = ''
  });

  List<String> tags;
  String name;
  String description;
  List<Event> events;
}