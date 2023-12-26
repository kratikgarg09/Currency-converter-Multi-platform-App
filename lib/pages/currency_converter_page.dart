import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPage();
}

class _CurrencyConverterMaterialPage extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.red,
        width: 4.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignCenter,
      ),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text("CURRENCY CONVERTER"),
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  hintText: "please Enter The Amount in USD",
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.red,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                  minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50)),
                ),
                child: const Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
