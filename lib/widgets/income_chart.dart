import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../palette.dart';

class IncomeChart extends StatefulWidget {
  @override
  _IncomeChartState createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int income = 0;
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
                        'Income',
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
                        'Rp. $income,00',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Palette.biru,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                child:Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                  child: PieChart(
                      PieChartData(
                          borderData: FlBorderData(show: false),
                          sectionsSpace: 0.0,
                          centerSpaceRadius: 25.0,
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
              ),
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
              color: Palette.biru,
              value:25,
              title: ' ',
              radius: radius);
        case 1:
          return PieChartSectionData(
              color: Palette.biru1,
              value:45,
              title: ' ',
              radius: radius);
        case 2:
          return PieChartSectionData(
              color: Palette.biru2,
              value:50,
              title: ' ',
              radius: radius);
        default:
          return null;
      }
    });
  }
}
