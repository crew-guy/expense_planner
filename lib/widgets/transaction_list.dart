import 'package:expense_planner/widgets/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_planner/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: transactions.isEmpty
          ? LayoutBuilder(builder: (ctx, constraint) {
              return Column(
                children: [
                  // Text('No transactions yet.....',
                  //     style: Theme.of(context).textTheme.title),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset('assets/images/waiting.png')
                ],
              );
            })
          // : ListView.builder(
          //     itemBuilder: (ctx, index) {
          //       return TransactionItem(
          //           transaction: transactions[index],
          //           deleteTx: deleteTx,
          //       );
          //     },
          //     itemCount: transactions.length,
          //   ),
          : ListView(
              children: transactions
                  .map((tx) => TransactionItem(
                        key: ValueKey(tx.id),
                        transaction: tx,
                        deleteTx: deleteTx,
                      ))
                  .toList()),
    );
  }
}
