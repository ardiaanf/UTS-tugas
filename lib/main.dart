import 'package:flutter/material.dart';
import 'package:uts/sidebar.dart';
import 'package:uts/pages/playlist.dart';
import 'package:uts/pages/album.dart';
import 'package:uts/pages/track.dart';
import 'package:uts/pages/forum.dart';
import 'package:uts/pages/promos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        drawer: MyDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                toolbarHeight: 50,
                pinned: true,
                expandedHeight: 50,
                backgroundColor: Colors.green[200],
                title: const Text(
                  'Inbox',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23, color: Colors.white),
                ),
                centerTitle: true,
                actions: <Widget>[
                  IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.search),
                  )
                ],
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              Inbox(),
              Outbox(),
              Spam(),
              Forum(),
              Promos()
            ],
          ),
        ),
      ),
    );
  }
}
