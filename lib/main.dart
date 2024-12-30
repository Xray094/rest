import 'package:flutter/material.dart';
import 'package:rest_api/views/car_page.dart';
import 'package:rest_api/views/store_page.dart';
void main(List<String> args) {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: StorePage(),
      ),
    ),
  );
}
