import 'package:flutter/material.dart';
import 'package:flutter_ex/main_navigator.dart';

class SecondView extends StatefulWidget {
  const SecondView({super.key});

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text("Second View Title")
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(
              builder: (_) => const MyHomePage()
          )),
          child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.green,
              child: const Text("return view")
          ),

        ),
      ),
    );
  }
}