import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: !true,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _getNavbar(),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
      bottomNavigationBar: Text("witam"),
    );
  }
}


Widget _getNavbar(){
  return new AppBar(
    backgroundColor: Colors.white,
    title: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.play_arrow, color: Colors.red),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text('Youtube', style: TextStyle(color: Colors.black, letterSpacing: -1.0, fontWeight: FontWeight.w700),),
        ),
      ],
    ),
  actions: <Widget>[
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Icon(Icons.videocam, color: Colors.black54),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Icon(Icons.search, color: Colors.black54),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Icon(Icons.account_circle, color: Colors.black54),
    ),
  ],

  );
}