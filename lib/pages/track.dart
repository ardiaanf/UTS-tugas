import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  final List music = [
    "Montse Hall",
    "Albert Lives",
    "Danny Pej",
    "Danny Pej",
    "Danny Pej",
    "Danny Pej",
    "Albert Lives",
    "Albert Lives",
    "Montse Hall",
    "Montse Hall"
  ];

  final List armusic = [
    "Hello there\nHas been a long time...",
    "Important News\nHas been a long time...",
    "Important News\nHas been a long time...",
    "Weekend Meeting\nThat is awesome!! Take a look... ?",
    "Material Design\nThat is awesome!! Take a look...",
    "Material Design\nThat is awesome!! Take a look...",
    "Material Design\nThat is awesome!! Take a look...",
    "Hello there\nCan you this wekeend?....",
    "Hello there\nCan you this wekeend?....",
    "Hello there\nCan you this wekeend?...."
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.transparent,
                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Unknown_person.jpg/925px-Unknown_person.jpg"),
                ),
                title: Text(music[index]),
                subtitle: Text(
                  armusic[index],
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  FlatButton(
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Text('2h'),
                  ),
                  FlatButton(
                    onPressed: () {
                      // Perform some action
                    },
                    child: Icon(Icons.star_border),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: music.length,
    );
  }
}
