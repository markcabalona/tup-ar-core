import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String toFormattedString({
    String format = 'y/M/d - hh:mm a',
  }) {
    return DateFormat(format).format(this);
  }
}
