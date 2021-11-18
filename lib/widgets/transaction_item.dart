import 'dart:math';

import 'package:expense_planner/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionItem extends StatefulWidget {
  const TransactionItem({
    Key? key,
    required this.transaction,
    required this.deleteTx,
  }) : super(key: key);

  final Transaction transaction;
  final Function deleteTx;

  @override
  _TransactionItemState createState() => _TransactionItemState();
}

class _TransactionItemState extends State<TransactionItem> {
  Color? _bgColor;

  @override
  void initState() {
    // TODO: implement initState
    const availableColors = [
      Colors.red,
      Colors.blue,
      Colors.black,
      Colors.purple,
      Colors.orange,
    ];
    _bgColor = availableColors[Random().nextInt(availableColors.length)];
    var color = super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: _bgColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FittedBox(
                child: Text(
                  '\$${widget.transaction.amount}',
                ),
              ),
            ),
          ),
          title: Text(
            widget.transaction.title as String,
            // style: Theme.of(context).textTheme.title,
          ),
          subtitle: Text(
            DateFormat.yMMMd().format(widget.transaction.date),
          ),
          trailing: MediaQuery.of(context).size.width > 460
              ? TextButton(
                  child: Row(
                    children: [
                      Icon(Icons.delete),
                      Text('Delete'),
                    ],
                  ),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(Theme.of(context).errorColor),
                  ),
                  onPressed: () => this.widget.deleteTx(widget.transaction.id),
                )
              : IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => this.widget.deleteTx(widget.transaction.id),
                  color: Theme.of(context).errorColor,
                ),
        ),
      ),
    );
  }
}
