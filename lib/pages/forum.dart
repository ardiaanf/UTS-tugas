import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forum extends StatelessWidget {
  final List almusic = [
    "Uknown",
  ];

  final List track = [
    "3",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text("Unknown | Forum " + track[index],
                style: TextStyle(
                  fontSize: 15,
                )),
            subtitle: Text(
              almusic[index],
              style: TextStyle(color: Colors.grey),
            ),
            leading: Container(
              child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Unknown_person.jpg/925px-Unknown_person.jpg"),
            ),
          ),
        );
      },
      itemCount: almusic.length,
    );
  }
}
