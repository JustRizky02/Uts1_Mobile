import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Pilih Satuan',
  'Celcius',
  'Fahrenheit',
  'Reamur',
  'Kelvin'
];

class DropDown extends StatefulWidget {
  const DropDown({
    Key? key,
  }) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      //hintText: 'Pilih Satuan',
      initialSelection: list.first,
      onSelected: (String? value) {
        setState(() {
          //dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
