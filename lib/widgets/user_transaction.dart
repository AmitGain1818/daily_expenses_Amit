import 'package:daily_expenses/widgets/new_transaction.dart';
import 'package:flutter/cupertino.dart';
import '../models/transaction.dart';
import 'transaction_list.dart';

class UserTrasaction extends StatefulWidget {
  @override
  _UserTrasactionState createState() => _UserTrasactionState();
}

class _UserTrasactionState extends State<UserTrasaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Apple',
      amount: 1399,
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
