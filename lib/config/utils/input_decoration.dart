import 'package:flutter/material.dart';

InputDecoration roundTextField(Color color)
{
  return InputDecoration(
      counterText: "",
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: color)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: color)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.red)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.red)),
      labelStyle: TextStyle(fontSize: 15, color: color)
  );
}