import 'package:flutter/material.dart';

class CupDialog extends SimpleDialog {
  final List<Widget> children;

  factory CupDialog() {
    var children = [
      Center(
        child: Text('Hello!'),
      )
    ];
    return CupDialog._init(children: children);
  }

  CupDialog._init({this.children})
      : super(title: const Text('Test'), children: children);
}
