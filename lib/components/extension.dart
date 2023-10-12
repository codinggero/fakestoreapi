extension StringEx on String {
  String cap() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension DatetimeNow on DateTime {
  int get timestamp {
    return millisecondsSinceEpoch;
  }

  int get milliseconds {
    return millisecondsSinceEpoch;
  }

  int get microseconds {
    return microsecondsSinceEpoch;
  }

  ///YYYY/MM/DD
  String get date {
    return '$year-$month-$day';
  }

  String get greeting {
    if (hour > 5 && hour < 12) {
      return "Good Morning  👋";
    } else if (hour > 12 && hour < 18) {
      return "Good Afternoon 👋";
    } else {
      return "Good Evening 👋";
    }
  }
}
