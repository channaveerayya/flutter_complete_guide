import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = ['what your favorite color', 'what your favorite animal'];
    void answers() {
      print("anser 3");
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Text(questions[1]),
              RaisedButton(
                child: Text("Ans 1"),
                onPressed: () => print("ans 1"),
              ),
              RaisedButton(
                child: Text("Ans 2"),
                onPressed: () {
                  print("ans 2");
                },
              ),
              RaisedButton(
                child: Text("Ans 3"),
                onPressed: answers,
              ),
            ],
          )),
    );
  }
}
