import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: transactions.map((tx) {
            return Card(
                child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.cyan, width: 2)),
                  // No es necesario .toString, interpolation llama al toString
                  child: Text('\$${tx.amount}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.cyan)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tx.title,
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      DateFormat.yMMMd().format(tx.date),
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ));
          }).toList(),
        ),
      ),
    );
  }
}
