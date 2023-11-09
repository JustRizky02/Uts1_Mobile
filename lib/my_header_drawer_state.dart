import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/profile.jpg'),
              ),
            ),
          ),
          Icon(
            Icons.person_pin_circle,
            size: 30,
          ),
          Text(
            "Rizky",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "muhammad.rizky@mhs.itenas.ac.id",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
