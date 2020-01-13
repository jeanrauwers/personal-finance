import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  static DateTime now = DateTime.now();

  final List<Transaction> _userTransactions = [
    Transaction(id: 't01', title: 'New Jacket', amount: 128.33, date: now),
    Transaction(id: 't02', title: 'New Shoes', amount: 88, date: now),
    Transaction(id: 't03', title: 'Coffee', amount: 2.53, date: now),
    Transaction(id: 't04', title: 'Dinner', amount: 39.73, date: now),
    Transaction(id: 't05', title: 'Plane Ticket', amount: 480.25, date: now),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
    );
  }
}
