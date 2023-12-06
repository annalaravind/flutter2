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

  void counterIncrement() {
    setState(() {
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Project",
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 211, 187, 255),
          title: const Text("Flutter Demo Home Page"),
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("You have pushed the button this many times:"),
                  Text(
                    "$counter",
                    style: const TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 11,
              right: 11,
              child: FloatingActionButton(
                onPressed: () {
                  counterIncrement();
                },
                backgroundColor: const Color.fromARGB(255, 211, 187, 255),
                child: const Text(
                  "+",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
