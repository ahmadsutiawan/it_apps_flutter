import 'package:flutter/material.dart';
import 'package:it_apps/util/const.dart';

class WorkOrder extends StatelessWidget {
  const WorkOrder({super.key});

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return SizedBox.expand(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: secondaryColor),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: primaryColor,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Create Work Order",
                style: h2Text,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 10,
            child: Container(
              padding: inboxPadding,
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  SizedBox(width: _width *0.05,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email', // Teks label di atas TextField
                        hintText:
                            'Masukkan email Anda', // Hint text di dalam TextField
                        border: OutlineInputBorder(
                          // Border outline
                          borderRadius:
                              BorderRadius.circular(2), // Bentuk border
                        ),
                        focusedBorder: OutlineInputBorder(
                          // Border saat TextField fokus
                          borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.0), // Warna dan lebar border
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
