import 'package:flutter/material.dart';
import '../palette.dart';
import '../widgets/widget.dart';
import '../models/model.dart';

class CategoryScreen extends StatelessWidget {
  final List<InCategory> _incomeCategory = [
    InCategory(
        id: 'i1',
        image: 'assets/images/gaji.png',
        name: 'Gaji'
    ),
    InCategory(
        id: 'i2',
        image: 'assets/images/penjualan.png',
        name: 'Penjualan'
    ),
    InCategory(
        id: 'i3',
        image: 'assets/images/hadiah.png',
        name: 'Hadiah'
    ),
    InCategory(
        id: 'i4',
        image: 'assets/images/other.png',
        name: 'Lainnya'
    ),
  ];

  final List<ExCategory> _expenseCategory = [
    ExCategory(
        id: 'e1',
        image: 'assets/images/food.png',
        name: 'Makanan'
    ),
    ExCategory(
        id: 'e2',
        image: 'assets/images/entertainment.png',
        name: 'Hiburan'
    ),
    ExCategory(
        id: 'e3',
        image: 'assets/images/shopping.png',
        name: 'Belanja'
    ),
    ExCategory(
        id: 'e4',
        image: 'assets/images/transportation.png',
        name: 'Transportasi'
    ),
    ExCategory(
        id: 'e5',
        image: 'assets/images/education.png',
        name: 'Pendidikan'
    ),
    ExCategory(
        id: 'e6',
        image: 'assets/images/other.png',
        name: 'Lainnya'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DefaultTabController(
          initialIndex: 0,
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              bottom: TabBar(
                  indicatorColor: Palette.ijo,
                  labelColor: Colors.black,
                  unselectedLabelColor: Palette.abu,
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'Income',
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Expense',
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ]
              ),
              title: Text('Chose Category',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            body: TabBarView(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 25.0),
                      child: ListView(
                        children: [
                          IncomeCategoryContainer(_incomeCategory)
                        ],
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 25.0),
                      child: ListView(
                        children: [
                          CategoryContainer(_expenseCategory),
                        ],
                      )
                  ),
                ]
            ),
          ),
        )
    );
  }
}
