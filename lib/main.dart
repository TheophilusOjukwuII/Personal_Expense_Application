import 'package:flutter/material.dart';
import 'package:personal_expense_flutter_app/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final List <Transaction> transactions = [
      Transaction(id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now(),),
      Transaction(id: 't2', title: 'Weekly Groceries', amount: 16.53, date: DateTime.now(),),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART!'),
              elevation: 5,
            ),
          ),
          Card(
            child: Text('LIST OF TX'),
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}



