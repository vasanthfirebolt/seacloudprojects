import 'package:flutter/material.dart';

import 'login_page.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Sea Cloud ',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black54,
            ),
          ),
          ListTile(
            leading: Icon(Icons.cloud),
            title: Text('My cloud '),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.file_download),
            title: Text('Downloads'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.insert_drive_file_sharp),
            title: Text('ALL Files'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Favorites'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.file_open_sharp),
            title: Text('Private File'),
            onTap: () => {Navigator.of(context).pop()},
          ),

          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>LoginPage(),
                ),
              );
            },


          ),
        ],
      ),
    );
  }
}