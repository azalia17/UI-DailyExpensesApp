import 'package:flutter/material.dart';
import './widget.dart';

class ChartContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: IncomeChart(),
          ),
          Expanded(
            child: ExpenseChart(),
          )
        ],
      ),
    );
  }
}
