import 'dart:ui';

import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String text;
  int index;

  VerseWidget(this.text, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      child: Text(
        '$text {$index}',
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
