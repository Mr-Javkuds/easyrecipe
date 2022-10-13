import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('latihan container'),
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.lightBlue,

          //margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),

          child: Container(
            height: 1000,
            width: 500,
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue,
                      Colors.red,
                    ])),

            child: const Align(
               alignment: Alignment.center,
              child: Text(
                'Mari belajar FLUTTER bersama saya ',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
