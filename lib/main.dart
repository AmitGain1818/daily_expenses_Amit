import 'package:daily_expenses/models/transaction.dart';
import 'package:daily_expenses/widgets/new_transaction.dart';
import 'package:daily_expenses/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:daily_expenses/widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'iPhone',
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

  void startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewTransaction(_addNewTransaction),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.orange,
        textTheme: ThemeData.light().textTheme.copyWith(
              caption: TextStyle(
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
              ),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                caption: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Daily Shop',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Center(
            child: Text(
              'Daily Expenses',
            ),
          ),
          actions: [
            IconButton(
              hoverColor: Colors.pink,
              onPressed: () {},
              icon: Icon(
                Icons.add,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.teal,
                  child: Center(
                    child: Text(
                      'Chart',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                ),
              ),
              TransactionList(_userTransactions),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Center(
            child: Icon(Icons.add),
          ),
          hoverColor: Colors.pink,
        ),
      ),
    );
  }
}
