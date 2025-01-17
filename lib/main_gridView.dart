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

  final postList = [
    {
      "number": "0",
      "color": Colors.cyan,
    },
    {
      "number": "1",
      "color": Colors.red,
    },
    {
      "number": "2",
      "color": Colors.orange,
    },
    {
      "number": "3",
      "color": Colors.yellow,
    },
    {
      "number": "4",
      "color": Colors.green,
    },
    {
      "number": "5",
      "color": Colors.blue,
    },
    {
      "number": "6",
      "color": Colors.indigo,
    },
    {
      "number": "7",
      "color": Colors.deepPurple,
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Flutter Title Ex")
      ),
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2, // grid 가로 수
      //     crossAxisSpacing: 15.0,
      //     mainAxisSpacing: 12.0,
      //   ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 15.0
        ),
        itemCount: postList.length,
        itemBuilder: (BuildContext con, int index) {
          return postContainer(
            number: postList[index]["number"] as String,
            colorData: postList[index]["color"] as Color,
          );
        }
      )
    );
  }

  Widget postContainer({String number = "0", colorData = Colors.amber}) {
    return Container(
      height: 200,
      color: colorData,
      child: Center(
        child: Text("box $number"),
      )
    );
  }
}
