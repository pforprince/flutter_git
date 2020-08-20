import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_git/flutter_git.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController userNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    await FlutterGit.getUserData("csj5483");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter_Git Example'),
        ),
        body: Center(
          child: Column(
              children: <Widget>[
          Container(
          margin: EdgeInsets.all(5),
          child: TextField(
            controller: userNameController,
            decoration: InputDecoration(
                labelText: "Enter Github Username",
                prefixIcon: Icon(Icons.account_circle),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12))),
          ),
        ),
        Center(
          child: RaisedButton.icon( icon: Icon(Icons.search), label: Text("Search"), onPressed: () { print(userNameController.text); },),
        ),
      
      ],
    ),)
    ,
    )
    ,
    );
  }
}
