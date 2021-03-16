import 'package:meta/meta.dart';

class DailyReport {
  final String id;
  final DateTime date;
  final int howMany;

  const DailyReport({
    @required this.id,
    @required this.date,
    @required this.howMany,
  });
}