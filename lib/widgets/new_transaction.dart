import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  NewTransaction(this.addTx);
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Product',
              ),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.black,
                side: BorderSide(
                  color: Colors.teal,
                  width: 4,
                  style: BorderStyle.solid,
                ),
              ),
              onPressed: () {
                print(titleController.text);
                print(amountController.text);
                addTx(
                  titleController.text,
                  double.parse(
                    amountController.text,
                  ),
                );
              },
              child: Text(
                'Add Transaction',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
