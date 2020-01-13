import './transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      home: MyHomePage(title: 'Personal Finance'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final List<Transaction> transactions = [
      Transaction(
          id: 't01', title: 'New Jacket', amount: 128.33, date: DateTime.now()),
      Transaction(
          id: 't02', title: 'New Shoes', amount: 88, date: DateTime.now()),
      Transaction(
          id: 't03', title: 'Coffee', amount: 2.53, date: DateTime.now()),
      Transaction(
          id: 't04', title: 'Dinner', amount: 39.73, date: DateTime.now()),
      Transaction(
          id: 't05',
          title: 'Plane Ticket',
          amount: 480.25,
          date: DateTime.now()),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Finance'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Card(
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              child: Container(
                child: Text(
                  'CHART',
                ),
              ),
            ),
            elevation: 5,
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2)),
                      child: Text(
                        '£${tx.amount}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(DateFormat('dd-MM-yyyy').format(tx.date),
                            style: TextStyle(
                              color: Colors.grey,
                            ))
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
