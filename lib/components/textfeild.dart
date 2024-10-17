import 'package:flutter/material.dart';

Widget textFeild({required TextEditingController controller,required Icon icon,required label, bool obscure = false})
{
  return TextFormField(
    obscureText: obscure,
    obscuringCharacter: "*",
    controller: controller,
    decoration: InputDecoration(
          icon: icon, labelText: label,border: OutlineInputBorder()),
    );
  }

