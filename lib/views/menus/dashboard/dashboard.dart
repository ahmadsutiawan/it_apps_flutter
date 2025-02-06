import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(color: Colors.red),
        child: Center(
          child: Text(
            "Dashboard",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
