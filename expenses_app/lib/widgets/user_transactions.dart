import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(id: 't1', title: 'Shoes', amount: 60, date: DateTime.now()),
    Transaction(id: 't2', title: 'T-Shirt', amount: 20, date: DateTime.now()),
  ];

  void addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NewTransaction(addNewTransaction),
      TransactionList(_userTransactions)
    ]);
  }
}
