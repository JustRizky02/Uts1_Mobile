import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  _BmiState createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  String _Text = '';
  final controllerA = TextEditingController();
  final controllerB = TextEditingController();
  final controllerHasil = TextEditingController();
  final controllerResult = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Hitung BMI"),
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
                  hintText: 'Weight (Kg)',
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
                  hintText: 'Height (m)',
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
                  hintText: 'Your BMI',
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
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: ElevatedButton(
                onPressed: () {
                  String a = controllerA.text;
                  String b = controllerB.text;
                  double dA = double.parse(a);
                  double dB = double.parse(b);
                  double hasil = dA / (dB * dB);
                  controllerHasil.text = hasil.toString();
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(25),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'BMI',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: ElevatedButton(
                onPressed: () {
                  double hasil2 = double.parse(controllerHasil.text);
                  if (hasil2 < 18.5) {
                    print(controllerResult.text =
                        "Skor BMI Anda $hasil2. Ini Berarti Berat Badan Anda Kurang");
                  } else if (hasil2 >= 18.5 && hasil2 <= 24.9) {
                    print(controllerResult.text =
                        "Skor BMI Anda $hasil2. Ini Berarti Berat Badan Anda Normal");
                  } else if (hasil2 >= 25 && hasil2 <= 29.9) {
                    print(controllerResult.text =
                        "Skor BMI Anda $hasil2. Ini Berarti Berat Badan Anda Berlebihan");
                  } else if (hasil2 >= 30) {
                    print(controllerResult.text =
                        "Skor BMI Anda $hasil2. Ini Berarti Berat Badan Anda Obesitas/Kegemukan");
                  }
                  setState(() {
                    _Text = controllerResult.text;
                  });
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(25),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'See the Result',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text('$_Text'),
            ),
          ],
        ),
      ),
    );
  }
}
