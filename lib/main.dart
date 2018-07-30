import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'movie.dart';

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
  var movies;

  @override
  Widget build(BuildContext context) {
    movies = [
      MovieData(
          "Gordon Ramsay Cooked For Vladimir Putin",
          "The Late Show with Stephen Colbert\n1.1M views.2 weeks ago",
          "assets/one.jpg"),
      MovieData("Hailee Steinfeld, Alesso - Let Me Go",
          "Hailee Steinfeld\n57M views.8 months ago", "assets/two.jpg"),
      MovieData("Charlie Puth - Look At Me Now",
          "Lyricwood\n4.7M views.4 months ago", "assets/three.jpg")
    ];


    return new Scaffold(
      appBar: _getNavbar(),
      body: _getListView(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black54,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.black54),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.fire,
              color: Colors.black54,
            ),
            title: Text(
              "Trending",
              style: TextStyle(color: Colors.black54),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions,
              color: Colors.black54,
            ),
            title: Text(
              "Subscriptions",
              style: TextStyle(color: Colors.black54),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: Colors.black54,
            ),
            title: Text(
              "Inbox",
              style: TextStyle(color: Colors.black54),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.folder,
              color: Colors.black54,
            ),
            title: Text(
              "Library",
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }



  Widget _getListView() {
    return new ListView.builder(
      itemCount: 6,
      scrollDirection: Axis.vertical,
      padding: new EdgeInsets.all(8.0),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Image.asset(movies[index % 3].imagePath,
                        fit: BoxFit.cover)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: Icon(Icons.account_circle, size: 40.0), flex: 2,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text(movies[index % 3].title, style: TextStyle(fontSize: 18.0),),
                        ),
                        Text(movies[index % 3].publisher, style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                    flex: 9,
                  ),
                  Expanded(child: Icon(Icons.more_vert), flex: 1),
                ],
              ),
            ),
          ],
        );
      },
    );
  }



  Widget _getNavbar() {
    return new AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.play_arrow, color: Colors.red),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Youtube',
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: -1.0,
                  fontWeight: FontWeight.w700),
            ),
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
}
