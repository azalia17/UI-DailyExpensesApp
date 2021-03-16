import 'package:flutter/material.dart';
import './screens/screen.dart';
import './palette.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Report(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Palette.ijo,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Add()));
        },
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: Row(
        children: <Widget>[
          buildNavBarItem(Icons.home,0),
          buildNavBarItem(Icons.pie_chart,1),
        ],
      ),
    );
  }


  Widget buildNavBarItem(IconData icon, int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width /2,
        decoration: index == _selectedIndex ? BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 4, color: Colors.white),
            ),
            /*gradient: LinearGradient(colors: [
              Colors.lightBlue.withOpacity(0.3),
              Colors.lightBlue.withOpacity(0.015),
            ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
            ),*/
            //color: index == _selectedIndex ? Colors.lightBlue : Colors.blueGrey
          ) : BoxDecoration(),
        child: Icon(icon, color: index == _selectedIndex ? Palette.ijo : Palette.abu),
      ),
    );
  }
}
