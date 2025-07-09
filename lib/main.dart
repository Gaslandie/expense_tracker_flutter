import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(scaffoldBackgroundColor: const Color.fromARGB(255, 230, 218, 184)),
      home:Expenses(),
    )
  );
}
