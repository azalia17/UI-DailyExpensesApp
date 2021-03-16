import 'package:flutter/material.dart';
import '../palette.dart';

class BalanceContainer extends StatelessWidget {
  int pemasukan = 0;
  int pengeluaran = 0;
  int saldo = 0;

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
              'Rp. $saldo,00',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //const Divider
          Row(
            children: [
              Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Income',
                      style: const TextStyle(
                        color: Palette.abu,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
              ),
              //const SizedBox(width: 20.0,),
              Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 0.0),
                    child: Text(
                      '$pemasukan',
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: Palette.biru,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Expense',
                      style: const TextStyle(
                        color: Palette.abu,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
              ),
              //const SizedBox(width: 20.0,),
              Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 0.0),
                    child: Text(
                      '- $pengeluaran',
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: Palette.merah,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                  )
              ),
              //const SizedBox(width: 20.0,),
              Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 0.0),
                    child: Text(
                      '$saldo',
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
