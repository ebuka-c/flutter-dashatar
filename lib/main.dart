import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  Color brown = Colors.brown;
  Color black = Colors.black;
  Color temp = Colors.white;
  List<Color> colours = [
    Colors.white,
    Colors.teal,
    Colors.black,
    Colors.pinkAccent,
    Colors.red,
    Colors.red,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: brown,
          centerTitle: true,
          title: Text('$counter'),
        ),
        backgroundColor: black,
        body: MaterialButton(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => Center(
                child: Image.asset('assets/images/dash.png'),
              ),
            ),
            onPressed: () => setState(() {
                  counter++;
                  temp = brown;
                  brown = black;
                  black = temp;
                })),
      ),
    );
  }
}
