import 'package:flutter/material.dart';

void main() {
  runApp(new TodoMainList());
}

class TodoMainList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(
          primarySwatch: Colors.amber
        ),
        home: new Scaffold(
      appBar: AppBar(
        title: Text("TODO", style: TextStyle(fontSize: 16.0),),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.search),
          )
        ],
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Icon(Icons.menu),
        ),
      ),
    ));
  }
}
