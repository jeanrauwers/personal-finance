import 'package:flutter/material.dart';
import '../models/transaction.dart';

import './transaction_list.dart';
import './new_transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  static DateTime now = DateTime.now();

  final List<Transaction> _userTransactions = [
    Transaction(id: 't01', title: 'New Jacket', amount: 128.33, date: now),
    Transaction(id: 't02', title: 'New Shoes', amount: 88, date: now),
    Transaction(id: 't03', title: 'Coffee', amount: 2.53, date: now),
    Transaction(id: 't04', title: 'Dinner', amount: 39.73, date: now),
    Transaction(id: 't05', title: 'Plane Ticket', amount: 480.25, date: now),
  ];

  void _addNewTransaction(String _title, double _amount) {
    final newTransaction = Transaction(
      id: 't${_userTransactions.length + 1}',
      title: _title,
      amount: _amount,
      date: now,
    );

    setState(() {
      _userTransactions.add(newTransaction);
    });
    print(_userTransactions);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      TransactionList(_userTransactions)
    ]);
  }
}
