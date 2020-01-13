import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        color: Colors.blue,
        child: Container(
          child: Text(
            'CHART',
          ),
        ),
        elevation: 5,
      ),
    );
  }
}
