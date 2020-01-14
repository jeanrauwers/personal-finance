import 'package:flutter/material.dart';
import 'package:personal_expenses/widgets/new_transaction.dart';
import 'package:personal_expenses/widgets/transaction_list.dart';

import './models/transaction.dart';
import './widgets/chart.dart';
import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Finance',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static DateTime now = DateTime.now();

  final List<Transaction> _userTransactions = [
    Transaction(id: 't01', title: 'New Jacket', amount: 128.33, date: now),
    Transaction(id: 't02', title: 'New Shoes', amount: 88, date: now),
    Transaction(id: 't03', title: 'Coffee', amount: 2.53, date: now),
    Transaction(id: 't04', title: 'Dinner', amount: 39.73, date: now),
    Transaction(id: 't05', title: 'Plane Ticket', amount: 480.25, date: now),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTransaction = Transaction(
        amount: txAmount,
        title: txTitle,
        date: now,
        id: 't${_userTransactions.length + 1}');

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  void _startAddNewTRansaction(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {},
              child: NewTransaction(newTransactionHandler: _addNewTransaction));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Personal Finance'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _startAddNewTRansaction(context),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Chart(),
                TransactionList(_userTransactions),
              ]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _startAddNewTRansaction(context),
        ));
  }
}
