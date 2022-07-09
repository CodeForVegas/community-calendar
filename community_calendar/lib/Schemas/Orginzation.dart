import 'package:community_calendar/Schemas/Calendar.dart';

class Organization {
  Organization(
      {this.calendars = const [],
      this.organizationName = '',
      this.ownerFirstName = '',
      this.ownerLastName = ''});

  String organizationName;
  String ownerFirstName;
  String ownerLastName;
  DateTime? joined;
  List<Calendar> calendars;
}
