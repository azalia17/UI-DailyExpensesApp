import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../palette.dart';

class ExpenseChart extends StatefulWidget {
  @override
  _ExpenseChartState createState() => _ExpenseChartState();
}

class _ExpenseChartState extends State<ExpenseChart> {
  int expense = 0;
  int _touchedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 10.0,
                bottom: 10.0,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                      child: Text(
                        'Expense',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Palette.abu,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
                      child: Text(
                        'Rp. $expense,00',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Palette.merah,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                  child: PieChart(
                      PieChartData(
                          borderData: FlBorderData(show: false),
                          centerSpaceRadius: 25.0,
                          sectionsSpace: 0.0,
                          //actual curves and data come from thhis function results
                          sections: showingSections(),
                          // this is to make chart interactive when someone touch
                          pieTouchData: PieTouchData(
                              touchCallback: (pieTouchResponse){
                                setState((){
                                  if (pieTouchResponse.touchInput is FlLongPressEnd ||
                                      pieTouchResponse.touchInput is FlPanEnd) {
                                    _touchedIndex = -1;
                                  } else{
                                    _touchedIndex = pieTouchResponse.touchedSectionIndex;
                                  }
                                });
                              }
                          )
                      )
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections(){
    return List.generate(3, (i) {
      final isTouched = i == _touchedIndex;
      final double radius = isTouched ? 50 : 35;
      switch(i) {
        case 0:
          return PieChartSectionData(
              color: Palette.merah,
              value:35,
              title: ' ',
              radius: radius);
        case 1:
          return PieChartSectionData(
              color: Palette.merah1,
              value:40,
              title: ' ',
              radius: radius);
        case 2:
          return PieChartSectionData(
              color: Palette.merah2,
              value:25,
              title: ' ',
              radius: radius);
        default:
          return null;
      }
    });
  }
}
