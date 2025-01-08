import 'package:flutter/material.dart';
import 'package:v1_micro_finance/widgets/bottom_nav_bar.dart'; // Import BottomNavBar widget

void main() {
  runApp(MicroFinance());
}

class MicroFinance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BottomNavBar(), // Use BottomNavBar as the home screen
    );
  }
}
