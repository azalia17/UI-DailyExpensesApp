import 'package:flutter/material.dart';
import '../palette.dart';
import '../widgets/widget.dart';
import '../data.dart';
import '../models/model.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.scaffold,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'Balance',
              style: const TextStyle(
                color: Palette.abu,
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            centerTitle: true,
            floating: true,
          ),
          SliverToBoxAdapter(
            child: BalanceContainer(),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final DailyReport dailyReport = dailyReports[index];
                return DateContainer(dailyReport: dailyReport);
              },
              childCount: dailyReports.length,
            ),
          ),
        ],
      ),
    );
  }
}
