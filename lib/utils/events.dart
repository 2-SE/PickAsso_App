import 'dart:collection';

import 'package:table_calendar/table_calendar.dart';

/// Example event class.
class Event {
  Event({
    this.title = 'title',
    required this.expandValue,
    this.isExpanded = false
  });
  String title;
  String expandValue;
  bool isExpanded;
}

/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.
final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);


List<Event> generateDailyEvent(int eventCount){
  return List<Event>.generate(eventCount, (int index){
    return Event(expandValue: 'Event $eventCount', title: "titlee "  );
  });
}

final _kEventSource = Map.fromIterable(List.generate(50, (index) => index),
    key: (item) => DateTime.utc(kFirstDay.year, kFirstDay.month, item * 5),
    value: (item) => List.generate(
        item % 4 + 1, (index) => Event(title: 'Event $item | ${index + 1}', expandValue: 'content $index'))
)
  ..addAll({
    kToday: [Event(title: 'Event a', expandValue: 'content a'), ],
  });

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
        (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}




final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 1, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 6, kToday.day);