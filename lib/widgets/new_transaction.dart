import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (val) {},
            ),
            TextField(
                onChanged: (val) {},
                decoration: InputDecoration(labelText: 'Amount')),
            FlatButton(
              child: Text('Add Transaction'),
              onPressed: () {},
              textColor: Colors.purple,
            )
          ],
        ),
      ),
      elevation: 5,
    );
  }
}