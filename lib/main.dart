import 'package:flutter/material.dart';
import 'package:freshkatale/ui/homepage/home_page.dart';

void main() => runApp(Katale());

class Katale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katale',
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0XFFFFFFFF),
          primaryColor: Color(0xFFFF4700)),
      home: HomePage(),
    );
  }
}
