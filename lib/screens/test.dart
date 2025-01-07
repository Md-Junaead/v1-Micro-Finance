import 'package:flutter/material.dart'; // Ensure you have profile.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Grid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ButtonGridScreen(),
    );
  }
}

class ButtonGridScreen extends StatelessWidget {
  final List<Map<String, String>> buttonData = [
    {'icon': 'Add Money', 'text': 'Add Money'},
    {'icon': 'Check Balance', 'text': 'Check Balance'},
    {'icon': 'Withdraw', 'text': 'Withdraw'},
    {'icon': 'Referrals', 'text': 'Referrals'},
    {'icon': 'Quick Loan', 'text': 'Quick Loan'},
    {'icon': 'Packages', 'text': 'Packages'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Grid'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0), // 5% margin approximation
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.0,
            ),
            itemCount: buttonData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 50,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 10),
                      Text(
                        buttonData[index]['text']!,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// profile.dart
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Profile Page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
