import 'package:flutter/material.dart';

import '../components/calendar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Coffee counter'),
          elevation: 0,
        ),
        body: Column(
          children: [
            InteractiveViewer(
              minScale: 0.1,
              maxScale: 10,
              child: Center(child: Calendar()),
            ),
          ],
        ));
  }
}
