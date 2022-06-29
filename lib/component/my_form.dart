import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  final String lable;
  final String validaiton;
  final double radius;
  final TextInputType keyBordType;
  final TextEditingController controller;

  MyForm({
    Key? key,
    required this.lable,
    required this.controller,
    this.radius = 6,
    required this.validaiton,
    required this.keyBordType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return validaiton;
        }
        return null;
      },
      controller: controller,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          labelText: lable,
          contentPadding: const EdgeInsets.symmetric(horizontal: 22),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(radius))),
    );
  }
}
