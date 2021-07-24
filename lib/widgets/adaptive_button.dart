import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveTextButton extends StatelessWidget {
  final String text;
  final void Function() handler;

  AdaptiveTextButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(this.text),
            onPressed: this.handler,
          )
        : TextButton(
            child: Text(this.text),
            onPressed: this.handler,
          );
  }
}
