import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.outbox,
              text: 'Inbox',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.send,
              text: 'Outbox',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          _drawerItem(
            icon: Icons.assignment_late_rounded,
            text: 'Spam',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(2);
              Navigator.pop(context);
            },
          ),
          _drawerItem(
            icon: Icons.forum,
            text: 'Forums',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(3);
              Navigator.pop(context);
            },
          ),
          _drawerItem(
            icon: Icons.feedback,
            text: 'Promos',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(4);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(color: Colors.green[200]),
      currentAccountPicture: ClipOval(
        child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSmHIuhjtl6jFo7GOh4NFGKcbo55q-8n8dCA&usqp=CAU'), fit: BoxFit.cover),
      ),
      accountName: Text('Ardian Firdaus'),
      accountEmail: Text('ardiaanf@gmail.com'),
    );
  }

  Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
