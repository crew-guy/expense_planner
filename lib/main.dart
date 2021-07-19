import 'package:expense_planner/transaction.dart';
import 'package:expense_planner/widgets/new_transaction.dart';
import 'package:expense_planner/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // String? titleInput;
  // String? amountInput;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: '1',
      title: 'Transaction 1',
      amount: 79.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Transaction 2',
      amount: 49.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: 'Transaction 3',
      amount: 79.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '4',
      title: 'Transaction 4',
      amount: 49.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '5',
      title: 'Transaction 5',
      amount: 79.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '6',
      title: 'Transaction 6',
      amount: 49.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '7',
      title: 'Transaction 7',
      amount: 79.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '8',
      title: 'Transaction 8',
      amount: 49.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '9',
      title: 'Transaction 9',
      amount: 79.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '10',
      title: 'Transaction 10',
      amount: 49.99,
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          behavior: HitTestBehavior.opaque,
          child: NewTransaction(_addNewTransaction),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kharcha Charcha'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startAddNewTransaction(context),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Card(
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                color: Colors.blue,
                child: Text('Charts'),
              ),
              elevation: 10,
            ),
            Column(
              children: <Widget>[
                TransactionList(this._userTransactions),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewTransaction(context),
      ),
    );
  }
}
