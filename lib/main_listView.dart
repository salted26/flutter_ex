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

  var postList = [
    {
      "title":"Sample Title 1",
      "color": Colors.red,
    },
    {
      "title":"Sample Title 2",
      "color": Colors.orange,
    },
    {
      "title":"Sample Title 3",
      "color": Colors.yellow,
    },
    {
      "title":"Sample Title 4",
      "color": Colors.green,
    },
    {
      "title":"Sample Title 5",
      "color": Colors.blue,
    },
    {
      "title":"Sample Title 6",
      "color": Colors.indigo,
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text("Flutter Title Ex")
      ),
      // body: ListView(
      //   children: [
      //     postContainer(title: "Title1", colorData: Colors.red),
      //     postContainer(title: "Title2", colorData: Colors.orange),
      //     postContainer(title: "Title3", colorData: Colors.yellow),
      //     postContainer(title: "Title4", colorData: Colors.green),
      //     postContainer(title: "Title5", colorData: Colors.blue),
      //   ],
      // )
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (BuildContext con, int index) {
          return postContainer (
            title: postList[index]["title"] as String,
            colorData : postList[index]["color"] as Color,
          );
        }
      )
    );
  }

  Widget postContainer({String title = '', Color colorData = Colors.lightBlue}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: colorData
        ),
      ],
    );
  }
}
