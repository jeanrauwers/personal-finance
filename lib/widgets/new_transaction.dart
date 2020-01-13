import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function newTransaction;

  NewTransaction(this.newTransaction);

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
              controller: titleController,
            ),
            TextField(
                controller: amountController,
                decoration: InputDecoration(labelText: 'Amount')),
            FlatButton(
              child: Text('Add Transaction'),
              onPressed: () {
                newTransaction(
                    titleController.text, double.parse(amountController.text));
                print(double.parse(amountController.text));
              },
              textColor: Colors.purple,
            )
          ],
        ),
      ),
      elevation: 5,
    );
  }
}
