import 'package:flutter/material.dart';
import 'package:application_restart/application_restart.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
//          child: Text('Running on: $_platformVersion\n'),
          child: MaterialButton(
            onPressed: () async {
                var result=await ApplicationRestart.restartApp();
                print(result);
            },
            color: Colors.blueAccent,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Click me',
                style: TextStyle(color: Colors.white, fontSize: 35.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}