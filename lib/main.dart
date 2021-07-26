import 'package:flutter/material.dart';
import 'neumorphic_expenses/monthly_expenses_view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pie Chart Expenses',
      theme: ThemeData(),
      home: MontlyExpensesView(),
      debugShowCheckedModeBanner: false,
    );
  }
}