class DateTimeUtils {
  const DateTimeUtils();

  DateTime get now => DateTime.now();

  String get year => now.year.toString();
  String get month => now.month.toString();
  String get day => now.day.toString();
  String get hour => now.hour.toString();
  String get minute => now.minute.toString();
  String get second => now.second.toString();
  String get millisecond => now.millisecond.toString();
  String get microsecond => now.microsecond.toString();

  String getDate() {
    final date = year + month + day;
    return date;
  }
}
