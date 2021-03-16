import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../palette.dart';
import '../screens/screen.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  final _amountController = TextEditingController();
  final _notesController = TextEditingController();
  DateTime _selectedDate;
  //CalendarController _controller;

  void _presentDatePicker(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2019),
        lastDate: DateTime.now()
    ).then((pickedDate) {
      if(pickedDate == null){
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }


  void _submitData(){
    if (_amountController.text.isEmpty){
      return;
    }

    final enteredAmount = int.parse(_amountController.text);
    final enteredNotes = _notesController.text;

    if (enteredAmount <= 0 || enteredNotes.isEmpty || _selectedDate == null){
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Add Transaction',
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
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 3.0, bottom: 3.0),
                            child: Text(
                                'Amount',
                                style: const TextStyle(
                                  fontSize: 12,
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 25.0, 20.0),
                          child: TextFormField(
                            controller: _amountController,
                            onFieldSubmitted: (_) => _submitData(),
                            onEditingComplete: (){},
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Add Amount',
                              hintStyle: const TextStyle(
                                fontSize: 14,
                                color: Palette.abu,
                                fontWeight: FontWeight.normal,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 5
                              ),
                              focusColor: Palette.ijo,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Palette.ijo,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Palette.abu,
                                  )
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 3.0, bottom: 3.0),
                            child: Text(
                                'Notes',
                                style: const TextStyle(
                                  fontSize: 12,
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 25.0, 20.0),
                          child: TextFormField(
                            controller: _notesController,
                            onFieldSubmitted: (_) => _submitData(),
                            onEditingComplete: (){},
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Add Notes',
                              hintStyle: const TextStyle(
                                fontSize: 14,
                                color: Palette.abu,
                                fontWeight: FontWeight.normal,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 5
                              ),
                              focusColor: Palette.ijo,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Palette.ijo,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Palette.abu,
                                  )
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 3.0,bottom: 3.0),
                                child: Text(
                                    'Date',
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
                                    icon: Icon(Icons.calendar_today),
                                    color: Palette.ijo,
                                    onPressed: _presentDatePicker,
                                  ),
                                  _selectedDate == null ? Text( 'Choose Date', style: const TextStyle(
                                    fontSize: 14,
                                    color: Palette.abu,
                                    fontWeight: FontWeight.normal,))
                                  : Text('${DateFormat.yMMMMEEEEd().format(_selectedDate)}',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => CategoryScreen()));
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 17.0),
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/question_mark.png',
                                  ),
                                  width: 45.0,
                                  height: 45.0,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                    padding: const EdgeInsets.only(left: 5.0, top: 17.0),
                                    child: Text(
                                      'Category',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Palette.abu,
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 25.0, top: 17.0),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16.0,
                                ),
                              ),
                            ],
                          ),
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

  /*void _calendarBottomSheet(context) {
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        height: 500.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30)
          ),
        ),
      );
    });
  }*/
}
