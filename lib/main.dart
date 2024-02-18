import 'package:flutter/material.dart';
import 'package:midtrans_snap/midtrans_snap.dart';
import 'package:midtrans_snap/models.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: MidtransSnap(
            mode: MidtransEnvironment.sandbox,
            token: 'TOKEN MIDTRANS',
            midtransClientKey: 'KLIEN_KEY',
            onPageFinished: (url) {
              print(url);
            },
            onPageStarted: (url) {
              print(url);
            },
            onResponse: (result) {
              print(result.toJson());
            },
          ),
        ),
      ),
    );
  }
}
