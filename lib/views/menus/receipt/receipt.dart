import 'package:flutter/material.dart';

class Receipt extends StatelessWidget {
  const Receipt({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(color: Colors.red),
        child: Center(
          child: Text(
            "Receipt",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
