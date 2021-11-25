import 'package:flutter/material.dart';
import 'package:daily_expenses/widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              UserTrasaction(),
            ],
          ),
        ),
      ),
    );
  }
}
