import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title : 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("Flutter Title Ex")
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  textStyle: TextStyle(
                    fontSize: 20,
                  )
                ),
                onPressed: () => print("Elevatred Button"),
                child: const Text("ElevatredButton")
              ),
            ),
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                  textStyle: TextStyle(
                    fontSize: 15,
                  )
                ),
                onPressed: () => print("Text Button"),
                child: const Text("TextButton")
              ),
            ),
            Center(
              child: OutlinedButton(
                onPressed: () => print("Oulined Button"),
                child: const Text("OulinedButton")
              ),
            )
          ],
        ),
      )
    );
  }
}
