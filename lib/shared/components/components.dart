import 'package:flutter/material.dart';

Widget DefaultButton(
        {required double width,
        bool isUpperCase = true,
        required Color background,
        required VoidCallback onPressedCallBack,
        required String text}) =>
    Container(
      width: width,
      child: MaterialButton(
        onPressed: onPressedCallBack,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: background),
    );

Widget DefaultFormField({
  required TextEditingController controller,
  required TextInputType inputType,
  ValueChanged? callback,
  ValueChanged? function,
  required FormFieldValidator validator,
  required String label,
  required IconData prefixIcon,
  IconData? suffixIcon,
  bool isPassword = false
}) =>
    TextFormField(
      decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          prefixIcon: Icon(prefixIcon),
          suffixIcon: Icon(suffixIcon != null ? suffixIcon : null)),
      keyboardType: inputType,
      controller: controller,
      onFieldSubmitted: callback,
      onChanged: function,
      obscureText: isPassword,
      validator: validator,
    );
