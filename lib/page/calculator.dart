import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final controllerA = TextEditingController();
  final controllerB = TextEditingController();
  final controllerHasil = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Hitung Angka"),
        ),
        body: ListView(
          children: <Widget>[
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: controllerA,
                decoration: InputDecoration(
                  hintText: 'Bilangan Pertama',
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: controllerB,
                decoration: InputDecoration(
                  hintText: 'Bilangan Kedua',
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: controllerHasil,
                readOnly: true,
                decoration: InputDecoration(
                  hintText: 'Hasil',
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    String a = controllerA.text;
                    String b = controllerB.text;
                    double dA = double.parse(a);
                    double dB = double.parse(b);
                    double hasil = dA + dB;
                    controllerHasil.text = hasil.toString();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    String a = controllerA.text;
                    String b = controllerB.text;
                    double dA = double.parse(a);
                    double dB = double.parse(b);
                    double hasil = dA - dB;
                    controllerHasil.text = hasil.toString();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    String a = controllerA.text;
                    String b = controllerB.text;
                    double dA = double.parse(a);
                    double dB = double.parse(b);
                    double hasil = dA * dB;
                    controllerHasil.text = hasil.toString();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    String a = controllerA.text;
                    String b = controllerB.text;
                    double dA = double.parse(a);
                    double dB = double.parse(b);
                    double hasil = dA / dB;
                    controllerHasil.text = hasil.toString();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    '/',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
