import 'package:flutter/material.dart';
import 'package:it_apps/util/const.dart';
import 'package:it_apps/views/menus/dashboard/dashboard.dart';
import 'package:it_apps/views/menus/hand_over/hand_over.dart';
import 'package:it_apps/views/menus/inventory/inventory.dart';
import 'package:it_apps/views/menus/purchase/purchase.dart';
import 'package:it_apps/views/menus/receipt/receipt.dart';
import 'package:it_apps/views/menus/work_order/work_order.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

//inisilaisasi index untuk warna listtile yang terpilih
int _selectedIndex = 2;

//control visibilitas seacrh fiels
bool _isSearchFieldVisible = false;

class _MainPageState extends State<MainPage> {


  Widget _currentDashboardContnt = WorkOrder();
  void _changeDashboardContent(Widget content, int index) {
    setState(() {
      _currentDashboardContnt = content;
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 200,
            color: bgColor1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 90,
                  child: Center(
                    child: Text(
                      "IT Apps",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                ),
                builderListtile(
                    context, "Dashboard", Icons.dashboard, Dashboard(), 1),
                builderListtile(
                    context, "Work Order", Icons.task, WorkOrder(), 2),
                builderListtile(
                    context, "Handover", Icons.send_and_archive, HandOver(), 3),
                builderListtile(
                    context, "Purchase", Icons.shopping_cart, Purchase(), 4),
                builderListtile(
                    context, "Receipt", Icons.delivery_dining, Receipt(), 5),
                builderListtile(
                    context, "Inventory", Icons.inventory, Inventory(), 6),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: bgColor2,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    height: 90,
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _isSearchFieldVisible = !_isSearchFieldVisible;
                            });
                          },
                          icon: Icon(Icons.search),
                        ),
                        if (_isSearchFieldVisible == true)
                          Row(
                            children: [
                              SizedBox(
                                width: 200,
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: "Cari..",
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide.none),
                                  ),
                                  onChanged: (value) {},
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.search_rounded))
                            ],
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(30),
                      child: _currentDashboardContnt,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Material builderListtile(
    BuildContext context,
    final String title,
    final IconData icon,
    final Widget destination,
    final int index,
  ) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        color: _selectedIndex == index ? bgColor2 : null,
        child: ListTile(
          hoverColor: bgColor2,
          leading: Icon(
            icon,
            color: _selectedIndex == index ? bgColor1 : Colors.white,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: _selectedIndex == index ? bgColor1 : Colors.white,
            ),
          ),
          onTap: () {
            _changeDashboardContent(destination, index);
          },
        ),
      ),
    );
  }
}
