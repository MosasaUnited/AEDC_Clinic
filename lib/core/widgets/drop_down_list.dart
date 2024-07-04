import 'package:flutter/material.dart';

class DoctorDropDownList extends StatefulWidget {
  const DoctorDropDownList({super.key});

  @override
  State<DoctorDropDownList> createState() => _DoctorDropDownListState();
}

class _DoctorDropDownListState extends State<DoctorDropDownList> {
  final List<String> dropDownItems = [
    '',
    'حازم',
    'أمانى',
    'أحمد عبد المقصود',
    'شيرين',
    'غادة عبد العزيز',
  ];

  String selectedTextFieldItem = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Drop Down With Text Field
          DropdownButtonFormField(
            value: selectedTextFieldItem,
            items: dropDownItems.map((String item) {
              return DropdownMenuItem(
                value: item,
                child: Center(child: Text(item)),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                selectedTextFieldItem = value!;
              });
            },
            icon: const Icon(Icons.arrow_drop_down),
            decoration: const InputDecoration(
              labelText: ' -- إختر الدكتور --',
              labelStyle: TextStyle(
                fontWeight: FontWeight.w800,
              ),
              border: OutlineInputBorder(),
            ),
          )
        ],
      ),
    );
  }
}
