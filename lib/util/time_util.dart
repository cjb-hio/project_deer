import 'package:intl/intl.dart';

class TimeUtil {
  static String getNowTime({String format = "yyyy-MM-dd HH:mm:ss"}) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  }

  static String getNextDate({String format = "yyyy-MM-dd", int next = 1}) {
    DateTime today = DateTime.now();
    DateTime tomorrow = today.add(Duration(days: 1));
    String formattedTomorrow = DateFormat(format).format(tomorrow);
    return formattedTomorrow;
  }
}
