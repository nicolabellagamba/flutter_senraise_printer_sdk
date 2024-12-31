import 'package:flutter/material.dart';

import 'package:senraise_printer/senraise_printer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _senraisePrinterPlugin = SenraisePrinter();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: TextButton(
              onPressed: () async {
                // Uint8List data = (await rootBundle.load('images/test.png'))
                //     .buffer
                //     .asUint8List();
                // await _senraisePrinterPlugin.printPic(data);
                await _senraisePrinterPlugin.setTextBold(true);
                await _senraisePrinterPlugin.setTextSize(96);
                await _senraisePrinterPlugin.printText("123\n");
              },
              child: const Text("clickkkkk")),
        ),
      ),
    );
  }
}
