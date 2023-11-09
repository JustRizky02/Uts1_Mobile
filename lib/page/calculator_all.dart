import 'package:flutter/material.dart';
import 'package:project_mobile/page/bmi.dart';
import 'package:project_mobile/page/calculator.dart';
import 'package:project_mobile/page/konversi_suhu.dart';
import 'package:project_mobile/page/konversi_uang.dart';
import 'package:project_mobile/page/nilai.dart';

class CalculatorAll extends StatefulWidget {
  const CalculatorAll({Key? key}) : super(key: key);

  @override
  _CalculatorAllState createState() => _CalculatorAllState();
}

class _CalculatorAllState extends State<CalculatorAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Calculator Page"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.calculate_outlined,
                color: Colors.black,
                size: 40,
              ),
            ),
            title: Text('Kalkulator'),
            subtitle: Text(
                'Kalkulator merupakan alat bantu hitung elektronik yang masih sederhana dibandingkan dengan komputer.'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Calculator()));
            },
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.monitor_weight_outlined,
                color: Colors.black,
                size: 40,
              ),
            ),
            title: Text('Hitung BMI'),
            subtitle: Text(
                'BMI adalah perkiraan lemak tubuh yang didasarkan pada tinggi dan berat badan.'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Bmi()));
            },
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.score_outlined, color: Colors.black, size: 40),
            ),
            title: Text('Hitung Nilai'),
            subtitle: Text(
                "Konversi Nilai adalah fitur untuk menampilkan rata-rata nilai kemudian dapat menampilkan juga nilai Indeksnya"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Nilai()));
            },
            isThreeLine: true,
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child:
                  Icon(Icons.ac_unit_outlined, color: Colors.black, size: 40),
            ),
            title: Text('Konversi Suhu'),
            subtitle: Text(
                "Suhu merupakan nilai yang digunakan untuk menunjukkan derajat panas suatu benda."),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KonversiSuhu()));
            },
            isThreeLine: true,
          ),
          Divider(height: 0),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.attach_money_outlined,
                  color: Colors.black, size: 40),
            ),
            title: Text('Konversi Uang'),
            subtitle: Text(
                "Konversi mata uang adalah suatu perubahan yang terjadi pada nilai tukar mata uang suatu negara terhadap mata uang negara lainnya."),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => KonversiUang()));
            },
            isThreeLine: true,
          ),
          Divider(height: 0),
        ],
      ),
    );
  }
}
