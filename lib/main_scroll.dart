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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.red
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        color: Colors.blue
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        color: Colors.green
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        color: Colors.purpleAccent
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        color: Colors.amberAccent
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        color: Colors.lime
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        color: Colors.red
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        color: Colors.blue
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        color: Colors.green
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}
