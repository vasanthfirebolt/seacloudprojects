import 'package:flutter/material.dart';
import 'package:seaprojectvasanth/pages/profilepage.dart';

import 'menupage.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double availableScreenWidth = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    availableScreenWidth = MediaQuery.of(context).size.width - 50;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SideDrawer(),
      appBar: AppBar(

     title: Text('Sea Cloud ',
    style: TextStyle(color: Colors.white,
    fontSize:20,
    fontWeight: FontWeight.w600
    ),
        ),
        actions:<Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'profile  Icon',
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle_rounded),
            tooltip: 'profile  Icon',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ProfilePage()),
              );
            },
          ),
        ],
        actionsIconTheme: IconThemeData( size: 30),
      // toolbarOpacity: 0.5,
        backgroundColor: Colors.black45,
      ),

      body: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          alignment: Alignment.bottomCenter,
          height: 10,
          decoration: BoxDecoration(
              color: Colors.white10
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: const TextSpan(
                      text: "Storage Space ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "\t4.1/10TB",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        )
                      ])),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),

          child: Row(
            children: [
              buildFileSizeChart("VIDEOS", Colors.blue, .3),
              const SizedBox(
                width: 2,
              ),
              buildFileSizeChart("DOCS", Colors.red, .25),
              const SizedBox(
                width: 2,
              ),
              buildFileSizeChart("IMAGES", Colors.yellow, .20),
              const SizedBox(
                width: 2,
              ),
              buildFileSizeChart("AUDIO", Colors.grey[200], .23),

            ],
          ),
        ),

    const SizedBox(
    height: 10,
    ),
        const Divider(
          height: 0,
        ),
        Expanded(
          child: ListView(
            // scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(25),
            children: <Widget> [

              const Text(
                "Categories",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15,),


              Row(
                children: [
                  buildFileColumn('','',''),
                  SizedBox(
                    width: availableScreenWidth * .06,
                  ),
                  buildFileColumn('', '', ''),
                  SizedBox(
                    width: availableScreenWidth * .06,
                  ),
                  buildFileColumn('', '', ''),
                  SizedBox(
                    width: availableScreenWidth * .06,

                  ),
                  buildFileColumn('', '', ''),

                ],
              ),

              Row(
                children: [
                  buildFileColumn('','',''),
                  SizedBox(
                    width: availableScreenWidth * .06,
                  ),
                  buildFileColumn('', '', ''),
                  SizedBox(
                    width: availableScreenWidth * .06,
                  ),
                  buildFileColumn('', '', ''),
                  SizedBox(
                    width: availableScreenWidth * .06,

                  ),
                  buildFileColumn('', '', ''),

                ],
              ),

              const Divider(height:10,),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recently Viewed ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "  New Folder ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Folder List
              buildProjectRow("Other"),
              buildProjectRow("Other"),
              buildProjectRow("Other"),
              buildProjectRow("Other"),
              buildProjectRow("Other"),
              buildProjectRow("Other"),
              buildProjectRow("Other"),
              buildProjectRow("Other"),
              buildProjectRow("Other"),
              buildProjectRow("Other"),
              buildProjectRow("Other"),
            ],
          ),
        )
      ]),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white ,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            }
            );
          },
          currentIndex: selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.share,
              ),
              label: 'share',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.home,
              ),
              label: 'home',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.analytics_outlined,
              ),
              label: 'analysis',
            ),

          ]),
    );
  }

  Widget buildProjectRow(String folderName) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.of(context).push(MaterialPageRoute<void>(
      //     builder: (BuildContext context) =>  ProjectPage(folderName: folderName,),));
      // },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 65,
        decoration: BoxDecoration(
            color: Colors.grey.shade200, borderRadius: BorderRadius.circular(15)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Row(
            children: [
              Icon(
                Icons.folder,
                color: Colors.blue[300],
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                folderName,
                style: const TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.grey,
            ),
          )
        ]),
      ),
    );
  }

  Column buildFileColumn(String image, String filename, String extension) {
    return Column(
      children: [
        Container(
          width: availableScreenWidth * .20,
          decoration: BoxDecoration(

              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(5)
          ),
          padding: const EdgeInsets.all(50),
          height: 60,
          child: Image.network(
              'https://media.istockphoto.com/id/996702124/vector/photo-gallery-icon-camera-picture-sign-photography-album-symbol-flat-vector-illustration.jpg?s=612x612&w=0&k=20&c=bJj5FZ9gZo6oJFLAS_9EUX0cGAl1FGlQT9qagrmX4zw='
              , fit: BoxFit.fill),

        ),

        const SizedBox(
          height: 15,
        ),
        RichText(
          text: TextSpan(
              text: filename,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              children: [
                TextSpan(
                  text: extension,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ),
              ]),
        ),
      ],
    );
  }

  Column buildFileSizeChart(String title, Color? color, double widthPercentage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(

          width: availableScreenWidth * widthPercentage,
          height: 4,
          color: color,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}