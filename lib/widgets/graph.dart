import 'package:flutter/material.dart';
import '../palette.dart';
import '../widgets/widget.dart';

class GraphContainer extends StatelessWidget {
  int pemasukanBersih = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15.0),
              height: 50,
              color: Colors.white,
              child: Text(
                '+$pemasukanBersih,00',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
                children: [
                  Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 15.0),
                        child: Text(
                          'Pemasukan',
                          style: const TextStyle(
                            color: Palette.biru,
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      )
                  ),
                  //const SizedBox(width: 20.0,),
                  Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 15.0),
                        child: Text(
                          'Pengeluaran',
                          style: const TextStyle(
                            color: Palette.merah,
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                  )
                ]
            ),
            Container(
              color: Colors.white,
              child: BarChartContainer(),
            )
          ]
      ),
    );
  }
}

