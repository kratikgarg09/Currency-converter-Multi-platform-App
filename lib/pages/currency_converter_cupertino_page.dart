import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertino extends StatefulWidget {
  const CurrencyConverterCupertino({super.key});

  @override
  State<CurrencyConverterCupertino> createState() => _State();
}

class _State extends State<CurrencyConverterCupertino> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert(){
    result = double.parse(textEditingController.text)*81;
    setState(() {});
  }
  
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text("CURRENCY CONVERTER"),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'INR ${result!= 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0) }',
              style: const TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: CupertinoColors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: CupertinoColors.black),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                placeholder: "please Enter The Amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar),
              ),
            ),//textField
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CupertinoButton.filled(
                onPressed: () {
                  convert();
                },
                // disabledColor: CupertinoColors.quaternarySystemFill,
                child: const Text("Submit"),

              ),
            ),//button
          ],
        ),
      ),
    );
  }
}
