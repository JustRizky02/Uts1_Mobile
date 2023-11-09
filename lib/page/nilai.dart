import 'package:flutter/material.dart';

class Nilai extends StatefulWidget {
  const Nilai({Key? key}) : super(key: key);

  @override
  _NilaiState createState() => _NilaiState();
}

class _NilaiState extends State<Nilai> {
  String _Text = '';
  final controllerA = TextEditingController();
  final controllerB = TextEditingController();
  final controllerC = TextEditingController();
  final controllerD = TextEditingController();
  final controllerHasil = TextEditingController();
  final controllerIndex = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Hitung Nilai"),
        ),
        body: ListView(children: <Widget>[
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: controllerA,
              decoration: InputDecoration(
                hintText: 'Nilai Tugas 1',
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
                hintText: 'Nilai Tugas 2',
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
              controller: controllerC,
              decoration: InputDecoration(
                hintText: 'Nilai UTS',
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
              controller: controllerD,
              decoration: InputDecoration(
                hintText: 'Nilai UAS',
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
                String c = controllerC.text;
                String d = controllerD.text;
                double dA = double.parse(a);
                double dB = double.parse(b);
                double dC = double.parse(c);
                double dD = double.parse(d);
                double hasil =
                    (dA * 0.2) + (dB * 0.2) + (dC * 0.3) + (dD * 0.3);
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
                  'Hitung Nilai',
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
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: controllerHasil,
              readOnly: true,
              decoration: InputDecoration(
                hintText: 'Nilai Rata-rata',
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
                double hasil2 = double.parse(controllerHasil.text);
                if (hasil2 > 0 && hasil2 <= 39.99) {
                  print(controllerIndex.text =
                      "Nilai rata-rata anda $hasil2. Ini Berarti Nilai Index Anda E");
                } else if (hasil2 > 40 && hasil2 <= 49.99) {
                  print(controllerIndex.text =
                      "Nilai rata-rata anda $hasil2. Ini Berarti Nilai Index Anda D");
                } else if (hasil2 > 50 && hasil2 <= 59.99) {
                  print(controllerIndex.text =
                      "Nilai rata-rata anda $hasil2. Ini Berarti Nilai Index Anda C");
                } else if (hasil2 > 60 && hasil2 <= 64.99) {
                  print(controllerIndex.text =
                      "Nilai rata-rata anda $hasil2. Ini Berarti Nilai Index Anda BC");
                } else if (hasil2 > 65 && hasil2 <= 72.99) {
                  print(controllerIndex.text =
                      "Nilai rata-rata anda $hasil2. Ini Berarti Nilai Index Anda B");
                } else if (hasil2 > 73 && hasil2 <= 78.99) {
                  print(controllerIndex.text =
                      "Nilai rata-rata anda $hasil2. Ini Berarti Nilai Index Anda AB");
                } else if (hasil2 > 80 && hasil2 <= 100) {
                  print(controllerIndex.text =
                      "Nilai rata-rata anda $hasil2. Ini Berarti Nilai Index Anda A");
                }
                setState(() {
                  _Text = controllerIndex.text;
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
        ]),
      ),
    );
  }
}
