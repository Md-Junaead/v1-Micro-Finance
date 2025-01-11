import 'package:flutter/material.dart';
import 'package:v1_micro_finance/screens/withdraw/bank_withdrawal_screen.dart';
import 'package:v1_micro_finance/screens/withdraw/crypto_withdrawal_screen.dart';

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
      home: BankWithdrawalScreen(), // Use BottomNavBar as the home screen
    );
  }
}
