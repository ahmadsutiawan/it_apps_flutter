import 'package:flutter/material.dart';


class MenuSamping extends StatelessWidget {
  const MenuSamping({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.home),
          )
        ],
      ),
    );
  }
}
