import 'package:flutter/cupertino.dart';
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
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15,),
                      decoration: BoxDecoration(border: Border.all(
                        color: Colors.purple,
                        width: 2
                      )),
                      padding: EdgeInsets.all(10),
                      child: Text(tx.amount.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      Text(tx.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.purple
                        )
                      ),
                      Text(tx.date.toString(),
                        style: TextStyle(
                            color: Colors.grey
                        ),
                      ),
                    ],),
                ],)
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}



