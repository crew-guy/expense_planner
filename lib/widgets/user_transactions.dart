// import 'package:expense_planner/models/transaction.dart';
// import 'package:expense_planner/widgets/new_transaction.dart';
// import 'package:expense_planner/widgets/transaction_list.dart';
// import 'package:flutter/material.dart';

// class UserTransactions extends StatefulWidget {
//   @override
//   _UserTransactionsState createState() => _UserTransactionsState();
// }

// class _UserTransactionsState extends State<UserTransactions> {
//   final List<Transaction> _userTransactions = [
//     Transaction(
//       id: '1',
//       title: 'Transaction 1',
//       amount: 79.99,
//       date: DateTime.now(),
//     ),
//     Transaction(
//       id: '2',
//       title: 'Transaction 2',
//       amount: 49.99,
//       date: DateTime.now(),
//     ),
//     Transaction(
//       id: '3',
//       title: 'Transaction 3',
//       amount: 79.99,
//       date: DateTime.now(),
//     ),
//     Transaction(
//       id: '4',
//       title: 'Transaction 4',
//       amount: 49.99,
//       date: DateTime.now(),
//     ),
//     Transaction(
//       id: '5',
//       title: 'Transaction 5',
//       amount: 79.99,
//       date: DateTime.now(),
//     ),
//     Transaction(
//       id: '6',
//       title: 'Transaction 6',
//       amount: 49.99,
//       date: DateTime.now(),
//     ),
//     Transaction(
//       id: '7',
//       title: 'Transaction 7',
//       amount: 79.99,
//       date: DateTime.now(),
//     ),
//     Transaction(
//       id: '8',
//       title: 'Transaction 8',
//       amount: 49.99,
//       date: DateTime.now(),
//     ),
//     Transaction(
//       id: '9',
//       title: 'Transaction 9',
//       amount: 79.99,
//       date: DateTime.now(),
//     ),
//     Transaction(
//       id: '10',
//       title: 'Transaction 10',
//       amount: 49.99,
//       date: DateTime.now(),
//     ),
//   ];
//   void _addNewTransaction(String txTitle, double txAmount) {
//     final newTx = Transaction(
//       id: DateTime.now().toString(),
//       title: txTitle,
//       amount: txAmount,
//       date: DateTime.now(),
//     );
//     setState(() {
//       _userTransactions.add(newTx);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         NewTransaction(_addNewTransaction),
//         TransactionList(this._userTransactions),
//       ],
//     );
//   }
// }
