import 'package:flutter/material.dart';
import '../palette.dart';
import '../screens/screen.dart';

class GoalContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Goal',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                          child: IconButton(
                            alignment: Alignment.topRight,
                            icon: Icon(Icons.add),
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => AddGoal()));
                            },
                          )
                      ),
                    ],
                  )
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: Palette.biru2,
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 12,
                            left: 12,
                            right: 12,
                            child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                          'Januari',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.white,
                                          ),
                                        )
                                    ),
                                    Expanded(
                                        child: Text(
                                          'Rp. 900.000',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.white,
                                          ),
                                        )
                                    )
                                  ],
                                )
                            )
                        ),
                        Positioned(
                            bottom: 12.0,
                            right: 12.0,
                            child: Text(
                              '-Rp. 450.000',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.white,
                              ),
                            )
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(right: 12, left:12),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: LinearProgressIndicator(
                                  value: 0.7,
                                  valueColor: AlwaysStoppedAnimation(Palette.biru),
                                  backgroundColor: Colors.white,
                                  minHeight: 10.0,
                                ),
                              ),
                            )
                        )
                      ],
                    ),
                  )
              ),
            ],
          ),
        )
    );
    /*return Container(
      color: Colors.white,
      //margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
      height: 70,
      child: FlatButton(
          color: Palette.ijo,
          textColor: Colors.white,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddGoal()));
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
              'Tambah Goal',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              )
          )
      ),
    );*/
  }
}
