import 'package:flutter/material.dart';
import '../palette.dart';
import '../widgets/widget.dart';

class Report extends StatelessWidget {
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
                'Pemasukan Bersih',
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
              child: GraphContainer(),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 1.0),
            ),
            SliverToBoxAdapter(
              child: ChartContainer(),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 1.0),
            ),
            SliverToBoxAdapter(
              child: GoalContainer(),
            )
          ]
      ),
    );
  }
}
