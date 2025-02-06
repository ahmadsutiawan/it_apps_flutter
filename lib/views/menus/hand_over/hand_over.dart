import 'package:flutter/material.dart';

class HandOver extends StatelessWidget {
  const HandOver({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(color: Colors.red),
        child: Center(
          child: Text(
            "HandOver",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
