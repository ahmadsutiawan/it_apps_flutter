// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:it_apps/util/const.dart';

class WorkOrder extends StatelessWidget {
  const WorkOrder({super.key});

  @override
  Widget build(BuildContext context) {
    // final _width = MediaQuery.of(context).size.width;
    final _deviceC = TextEditingController();
    final _troubleC = TextEditingController();
    final _treatmentC = TextEditingController();
    final _statusC = TextEditingController();
    final _workDurationC = TextEditingController();
    final _remarksC = TextEditingController();
    final _requestorNameC = TextEditingController();
    final _departmentC = TextEditingController();
    final _workDateC = TextEditingController();
    final _picC = TextEditingController();
    final _knownByC = TextEditingController();

    return SizedBox.expand(
      child: ListView(
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
                    Icons.edit,
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
            child: Expanded(
              child: Container(
                padding: inboxPadding,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        generateTextFieldBorder(_deviceC, "Device Name"),
                        generateTextFieldBorder(_troubleC, "Trouble"),
                      ],
                    ),
                    Row(
                      children: [
                        generateTextFieldBorder(_treatmentC, "Treatment"),
                        generateTextFieldBorder(_statusC, "Status"),
                        generateTextFieldBorder(_workDurationC, "Work Duration")
                      ],
                    ),
                    Row(
                      children: [generateTextFieldBorder(_remarksC, "Remarks")],
                    ),
                    footerField(_requestorNameC, "Requestor Name"),
                    footerField(_departmentC, "Department"),
                    footerField(_workDateC, "Worked Date"),
                    footerField(_picC, "PIC"),
                    Row(
                      children: [
                        footerField(_knownByC, "Known By"),
                        SizedBox(
                          width: 10,
                        ),
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Batas Card atas
          SizedBox(height: 20),
          Card(
            elevation: 10,
            child: SizedBox(
              height: 500, // Pastikan ada ketinggian agar terlihat
              child: Container(
                padding: inboxPadding,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ScrollConfiguration(
                  behavior: ScrollBehavior().copyWith(dragDevices: {
                    PointerDeviceKind.mouse,
                    PointerDeviceKind.touch
                  }),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicWidth(
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min, // Tambahkan ini
                          children: [
                            headerLIst("NO", 100),
                            headerLIst("DEVICE NAME", 200),
                            headerLIst("TROUBLE", 300),
                            headerLIst("TREATMENT", 300),
                            headerLIst("STATUS", 100),
                            headerLIst("DURATION", 100),
                            headerLIst("REMARKS", 200),
                            headerLIst("REQ. NAME", 100),
                            headerLIst("DEPARTMENT", 100),
                            headerLIst("WORKED DATE", 100),
                            headerLIst("PIC", 100),
                            headerLIst("KNOWN BY", 100),
                            
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget headerLIst(String title, double width) {
    return Container(
      width: width,
      height: 40,
      color: primaryColor,
      child: Center(
          child: Text(
        title,
        style: TextStyle(color: secondaryColor),
      )),
    );
  }

  SizedBox footerField(
    TextEditingController _requestorNameC,
    String title,
  ) {
    return SizedBox(
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          controller: _requestorNameC,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            label: Text(
              title,
              style: TextStyle(color: bgColor1, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }

  Expanded generateTextFieldBorder(
    TextEditingController _deviceC,
    String titile,
  ) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          controller: _deviceC,
          decoration: InputDecoration(
            label: Text(
              titile,
              style: TextStyle(color: bgColor1, fontWeight: FontWeight.w400),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
