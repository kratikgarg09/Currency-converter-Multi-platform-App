import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_one/pages/currency_converter_cupertino_page.dart';
import 'package:new_one/pages/currency_converter_page.dart';


void main() {
  runApp(const MyCupertinoApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),

    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertino(),
    );
  }
}

