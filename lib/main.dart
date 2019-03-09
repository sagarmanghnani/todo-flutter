import 'package:flutter/material.dart';

void main() {
  runApp(new TodoMainList());
}

class TodoMainList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(primarySwatch: Colors.amber),
        home: new Scaffold(
          appBar: AppBar(
            title: Text(
              "TODO",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
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
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
          body: TodoUser(),
          backgroundColor: Colors.orangeAccent,
        ));
  }
}

class TodoUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.fromLTRB(13.0, 45.0, 0.0, 0.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                Icons.account_circle,
                size: 45.0,
                color: Colors.white,
              ),
            ),
          ),
          new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 12.0),
            child: new Text(
              "Hello Jane",
              style: TextStyle(fontSize: 36.0, color: Colors.white),
            ),
          ),
          new Text(
            "Looks Like Feel Good",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          new Text(
            "You Have 3 tasks to do Today",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          new CardDesign()
        ],
      ),
    );
  }
}

class CardDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 1,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return GestureDetector(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                child: new Container(
                  width: 250.0,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Icon(Icons.account_circle),
                            new Icon(Icons.more_vert)
                          ],
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                              child: new Text("9 Tasks"),
                            ),
                            new Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                              child: new Text("Personal"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: LinearProgressIndicator(value: 0.25,),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }));
  }
}
