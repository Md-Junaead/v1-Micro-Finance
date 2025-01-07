import 'package:flutter/material.dart';

class ReferralsScreen extends StatelessWidget {
  const ReferralsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Referrals"),
      ),
      body: const Center(
        child: Text(
          "This is the Referrals Screen",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
