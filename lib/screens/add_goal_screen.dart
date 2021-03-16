import 'package:flutter/material.dart';
import '../palette.dart';
import '../widgets/widget.dart';

class AddGoal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Add Goal',
          style: const TextStyle(
            fontSize: 16.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(28.0, 40.0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            CustomInputBox(
                                label: 'Nominal',
                                inputHint: 'Masukkan Nominal'
                            ),
                            CustomInputBox(
                              label: 'Notes',
                              inputHint: 'Tambah catatan',
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 3.0,bottom: 3.0),
                                child: Text(
                                    'Waktu',
                                    style: const TextStyle(
                                      fontSize: 12,
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0, bottom: 3.0),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.watch_later_outlined),
                                    color: Palette.ijo,
                                    onPressed: (){
                                      _goalTime(context);
                                    },
                                  ),
                                  Text(
                                    'Pilih Waktu',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Palette.abu,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          width: 250,
                          height: 50,
                          child: FlatButton(
                              color: Palette.ijo,
                              textColor: Colors.white,
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                  'Save',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  )
                              )
                          ),
                        ),
                      ],
                    )
                ),
              ]
          )
      ),
    );
  }

  void _goalTime(context) {
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30)
            ),
          ),
          child: Column(
              children: [
                SizedBox(
                    height: 20.0
                ),
                Center(
                    child: Text(
                        'Pilih Waktu',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                        )
                    )
                ),
                GoalTimeContainer(),
              ]
          )
      );
    });
  }
}
