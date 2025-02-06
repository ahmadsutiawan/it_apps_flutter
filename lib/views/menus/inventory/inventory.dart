import 'package:flutter/material.dart';

class Inventory extends StatelessWidget {
  const Inventory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(color: Colors.red),
        child: Center(
          child: Text(
            "Inventory",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
