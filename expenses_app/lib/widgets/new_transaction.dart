import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titleController,
              ),
              TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  controller: amountController),
              FlatButton(
                onPressed: () => addTransaction(
                    titleController.text, double.parse(amountController.text)),
                child: Text('Add transaction'),
                textColor: Colors.cyan,
              )
            ],
          )),
    );
  }
}
