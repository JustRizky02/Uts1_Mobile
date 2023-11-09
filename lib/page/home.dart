import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Home Page"),
        ),
        body: Container(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 50,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(8),
                    // ),
                    height: 50,
                    width: 50,
                    color: Colors.indigoAccent,
                    child: Center(child: Text(index.toString())),
                  ),
                  // ListView.builder vertikal
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
