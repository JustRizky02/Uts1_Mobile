import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project_mobile/my_header_drawer_state.dart';
import 'package:project_mobile/page/calculator_all.dart';
import 'package:project_mobile/page/profile.dart';

import '../page/home.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  var currentPage = DrawerSections.homepage;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.homepage) {
      container = Home();
    } else if (currentPage == DrawerSections.calculator) {
      container = CalculatorAll();
    } else if (currentPage == DrawerSections.profile) {
      container = Profile();
    } // else if (currentPage == DrawerSections.konversisuhu) {
    //container = KonversiSuhu();
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.black,
        //   title: Text('Beta'),
        // ),
        body: container,
        drawer: Drawer(
          //backgroundColor: Colors.grey,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  MyHeaderDrawer(),
                  MyDrawerList(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.black,
          items: const <Widget>[
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.calculate,
              color: Colors.white,
            ),
            Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            setState(() {
              if (index == 0) {
                currentPage = DrawerSections.homepage;
              } else if (index == 1) {
                currentPage = DrawerSections.calculator;
              } else if (index == 2) {
                currentPage = DrawerSections.profile;
              }
              // }
            });
          },
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Home Page", Icons.home_outlined,
              currentPage == DrawerSections.homepage ? true : false),
          menuItem(2, "Calculator", Icons.calculate_outlined,
              currentPage == DrawerSections.calculator ? true : false),
          //menuItem(3, "", Icons.add_chart,
          //currentPage == DrawerSections.iot ? true : false),
          // Divider(),
          // menuItem(5, "Settings", Icons.settings_outlined,
          //     currentPage == DrawerSections.settings ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.homepage;
            } else if (id == 2) {
              currentPage = DrawerSections.calculator;
            } else if (id == 3) {
              currentPage = DrawerSections.profile;
            } //else if (id == 4) {
            //currentPage = DrawerSections.konversisuhu;
            // } else if (id == 6) {
            //   currentPage = DrawerSections.notifications;
            // } else if (id == 7) {
            //   currentPage = DrawerSections.logout;
            // } else if (id == 8) {
            //   currentPage = DrawerSections.send_feedback;
            // }
            //}
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections { homepage, calculator, profile }
