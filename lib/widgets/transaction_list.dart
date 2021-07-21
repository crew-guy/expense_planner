import 'package:flutter/material.dart';
import 'package:expense_planner/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: transactions.isEmpty
          ? Column(
              children: [
                Text('No transactions yet.....',
                    style: Theme.of(context).textTheme.title),
                SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/waiting.png')
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                    // child: Row(
                    //   children: [
                    //     Container(
                    //       decoration: BoxDecoration(
                    //         border: Border.all(color: Colors.purple, width: 2),
                    //       ),
                    //       padding: EdgeInsets.all(7),
                    //       margin: EdgeInsets.all(7),
                    //       child: Text(
                    //         '\$${transactions[index].amount.toStringAsFixed(2)}',
                    //         style: TextStyle(
                    //           fontWeight: FontWeight.bold,
                    //           color: Colors.purple,
                    //           fontSize: 20,
                    //         ),
                    //       ),
                    //     ),
                    //     Container(
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(transactions[index].title.toString(),
                    //               // style: TextStyle(
                    //               //     fontSize: 20, fontWeight: FontWeight.bold),
                    //               style: Theme.of(context).textTheme.title),
                    //           Text(
                    //             DateFormat.yMMMd()
                    //                 .format(transactions[index].date),
                    //             style: TextStyle(
                    //               color: Colors.black38,
                    //               fontSize: 15,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     )
                    //   ],
                    // ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FittedBox(
                            child: Text(
                              '\$${transactions[index].amount}',
                            ),
                          ),
                        ),
                      ),
                      title: Text(
                        transactions[index].title as String,
                        style: Theme.of(context).textTheme.title,
                      ),
                      subtitle: Text(
                          DateFormat.yMMMd().format(transactions[index].date)),
                    ),
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
