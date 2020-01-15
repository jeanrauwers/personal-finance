import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPercentual;

  ChartBar({this.label, this.spendingAmount, this.spendingPercentual});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('£${spendingAmount.toStringAsFixed(0)}'),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromRGBO(220, 220, 220, 1), width: 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPercentual,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(label)
      ],
    );
  }
}
