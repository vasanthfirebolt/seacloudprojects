import 'package:flutter/material.dart';

import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Drawer(

      child: Column(

        children: <Widget>[
      AppBar(
        centerTitle: true,
        title: Text(" Profile " ,
          style:
            TextStyle( fontSize : 30 ,
                fontWeight: FontWeight.bold),
        ),
      leading: Builder(
          builder: (BuildContext context) {
    return IconButton(
    icon: const Icon(Icons.arrow_back,size: 30,),
    onPressed: () { Navigator.pop(context); },

    );
    },
    ),
        backgroundColor: Colors.white24,
    ),
          const DrawerHeader(
            child:Center(
             child : Align(
                alignment:Alignment(0, 0),
                child : ProfilePicture(
                  name: 'vasanth M  ',
                  // role: 'ADMINISTRATOR',
                  radius: 100,
                  fontsize: 10,
                  tooltip: true,
                  img: 'https://media.istockphoto.com/id/1303206644/photo/portrait-of-smiling-caucasian-man-pose-in-office.jpg?s=612x612&w=0&k=20&c=7lpbx5jEVQkdG0iA9UvsEUmeu7oed2A3suvMwMPAeIs=',

                ),),


            ),

            decoration: BoxDecoration(
              color: Colors.black54,

            ),

          ),


          SizedBox(height:10,),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Account  '),
            onTap: () => {},
          ),

          ListTile(
            leading: Icon(Icons.storage),
            title: Text(' Buy Storage'),
            onTap: () => {},
          ),

          ListTile(
            leading: Icon(Icons.notifications_active_outlined),
            title: Text('Notification'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.dashboard_outlined),
            title: Text('Dashboard'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.system_update),
            title: Text('Update'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.delete_outline_outlined),
            title: Text('Recycle Bin'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting '),
            onTap: () => {},
          ),
          // ListTile(
          //   //exit_to_app
          //   leading: Icon(Icons.backspace_outlined),
          //   title: Text('Back '),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) =>HomePage(),
          //       ),
          //     );
          //   },
          //
          //
          // ),
        ],
      ),
    );
  }
}