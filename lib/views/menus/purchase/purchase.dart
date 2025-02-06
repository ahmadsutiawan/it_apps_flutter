import 'package:flutter/material.dart';

class Purchase extends StatelessWidget {
  const Purchase({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(color: Colors.red),
        child: Center(
          child: Text(
            "Purchase",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
