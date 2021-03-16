import 'package:flutter/material.dart';
import '../palette.dart';

class MyChoice {
  String choice;
  int index;

  MyChoice({this.index, this.choice});
}


class GoalTimeContainer extends StatefulWidget {

  @override
  _GoalTimeContainerState createState() => _GoalTimeContainerState();
}

class _GoalTimeContainerState extends State<GoalTimeContainer> {
  String default_choice = 'Hari ini';
  int default_index = 0;

  List<MyChoice> choices = [
    MyChoice(index: 0, choice: "Hari ini"),
    MyChoice(index: 1, choice: "Minggu ini"),
    MyChoice(index: 2, choice: "Bulan ini"),
    MyChoice(index: 3, choice: "Tahun ini"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wrap(
          children: <Widget>[
            Container(
              child: Column(
                children: choices.map((data) => RadioListTile(
                  title: Text('${data.choice}',
                      style: TextStyle(
                        fontSize: 14.0,
                      )),
                  groupValue: default_index,
                  activeColor: Palette.ijo,
                  onChanged: (value){
                    setState((){
                      default_choice = data.choice;
                      default_index = data.index;
                    });
                  },
                )).toList(),
              ),
            ),
          ],
        )
      ],
    );
  }
}

/*class GoalTimeContainer extends StatefulWidget {
  @override
  _GoalTimeContainerState createState() => _GoalTimeContainerState();
}

class _GoalTimeContainerState extends State<GoalTimeContainer> {

  String radioItem ='';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(value: 'Hari', groupValue: radioItem, onChanged: )
      ],
    );
  }
}*/


