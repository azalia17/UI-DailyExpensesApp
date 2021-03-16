import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/model.dart';
import '../palette.dart';
import '../widgets/widget.dart';
import '../data.dart';


class DateContainer extends StatelessWidget {
  final DailyReport dailyReport;

  const DateContainer({
    Key key,
    @required  this.dailyReport,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white,
      child: dailyReports.isEmpty ?
      Column(
        children: [
          Text(
            'No transaction added yet!',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ]
      ) :Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _DailyReportHeader(dailyReport: dailyReport),
                ],
              ),
            ),
          ]
      ),
    );
  }
}

class _DailyReportHeader extends StatelessWidget {
  final DailyReport dailyReport;

  const _DailyReportHeader({
    Key key,
    @required  this.dailyReport,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            children: [
              Text(
                DateFormat('dd').format(dailyReport.date),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat('EEEE').format(dailyReport.date),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      DateFormat('MMMM y').format(dailyReport.date),
                      style: const TextStyle(
                        color: Palette.abu,
                        fontSize: 10.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                dailyReport.howMany.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          Container(
            height: 1.0,
            color: Palette.scaffold,
          ),
          Column(
              children: [
                DailyCategoryContainer(
                    title: 'Makanan',
                    note: 'Makan Ati',
                    howMuch: '4000',
                    image: 'assets/images/food.png'
                ),
                DailyCategoryContainer(
                    title: 'Belanja',
                    note: 'Beli Baju',
                    howMuch: '2000',
                    image: 'assets/images/shopping.png'
                ),
              ]
          )
        ]
    );
  }
}
