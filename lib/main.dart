import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'screens/home.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      routes: {'/': (context) => HomePage()},
    );
  }
}
