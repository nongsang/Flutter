import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Test', style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),

          body: Column(
            children: [
              IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(color: Colors.red, width: 50, height: 50),
                    Container(color: Colors.green, width: 150, height: 150),
                    Container(color: Colors.blue, width: 100, height: 100)
                  ],
                ),
              ),

              ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 300,
                  maxHeight: 50,
                ),
                child: Container(
                  color: Colors.yellow,
                  width: 150,
                  height: 150,
                ),
              )
            ],
          )
      ),
    );
  }
}