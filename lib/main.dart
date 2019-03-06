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
        title: Text("TODO", style: TextStyle(fontSize: 16.0, color: Colors.white),),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.search, color: Colors.white),
          )
        ],
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Icon(Icons.menu, color: Colors.white,),
        ),
      ),
      body:TodoUser(),
      backgroundColor: Colors.amber,
    ));
  }
}

class TodoUser extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Container(
        child: new Column(
          children: <Widget>[
            new Container(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(Icons.account_circle, size: 45.0, color: Colors.white,),
              ),
            ),
            new Padding(
                padding: EdgeInsets.all(8.0),
                child: new Text("Hello Jane", style: TextStyle(fontSize: 16.0, color: Colors.white),),
              )
          ],
        ),
      );
    }
}
