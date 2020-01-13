import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function newTransaction;

  NewTransaction(this.newTransaction);

  void submitHandler() {
    final enterTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enterTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    newTransaction(enterTitle, enteredAmount);
  }

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
              onSubmitted: (_) => submitHandler(),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitHandler(),
            ),
            FlatButton(
              child: Text('Add Transaction'),
              onPressed: submitHandler,
              textColor: Colors.purple,
            )
          ],
        ),
      ),
      elevation: 5,
    );
  }
}
