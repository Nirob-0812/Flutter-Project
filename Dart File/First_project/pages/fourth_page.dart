import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Frth_page extends StatelessWidget {
  static const route = "Fourth";
  List story = [
    {"images": 'images/nirob.jpeg', "username": 'Nirob'},
    {"images": 'images/katrina.jpg', "username": 'Katrina'},
    {"images": 'images/parineeti.jpeg', "username": 'Parineeti'},
    {"images": 'images/Kajal.jpg', "username": 'Kajal'},
    {"images": 'images/nirob.jpeg', "username": 'Nirob'},
    {"images": 'images/katrina.jpg', "username": 'Katrina'},
    {"images": 'images/parineeti.jpeg', "username": 'Parineeti'},
    {"images": 'images/Kajal.jpg', "username": 'Kajal'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            FontAwesomeIcons.paperPlane,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          )
        ],
        backgroundColor: Colors.white,
        title: Text(
          'Instagram',
          style: TextStyle(
              fontFamily: 'Schyler', fontSize: 35, color: Colors.black),
        ),
      ),
      bottomNavigationBar: Bottom_AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(8, (index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        height: 67,
                        width: 67,
                        //color: Colors.orange,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                            )
                          ],
                          shape: BoxShape.circle,
                          color: Colors.orange,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xD1C90AC6), Color(0xDEFCF80D)],
                          ),
                        ),
                        child: Container(
                          height: 65,
                          width: 65,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(story[index]["images"]),
                              ),
                              //color: Colors.orange,
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        story[index]["username"],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                );
              })),
            ),
          ),
          Divider(
            color: Colors.black,
            height: 20,
          ),
          Expanded(
            child: post_page(),
          )
        ],
      ),
    );
  }
}

//BottomAppBar

class Bottom_AppBar extends StatelessWidget {
  const Bottom_AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 35,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.plusSquare,
                size: 30,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_rounded,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
              ),
              label: 'home'),
        ],
      ),
    );
  }
}

//post_page

class post_page extends StatelessWidget {
  const post_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                'norafatehi',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.more_vert_outlined,
                color: Colors.black,
              ),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/NoraFatehi.jpg'),
                    )),
              ),
            ),
            Container(
              height: 400,
              width: 400,
              //color: Colors.red,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/NoraFatehi.jpg'))),
            ),
            ListTile(
              leading: Wrap(
                children: [
                  Icon(
                    Icons.favorite_rounded,
                    color: Colors.red,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.comment,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.paperPlane,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Icon(Icons.more_horiz_outlined),
                ],
              ),
              trailing: Icon(
                FontAwesomeIcons.bookmark,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text('1,102,817 likes'),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text(
                    'norafatehi',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  " I'm trying to just relate what I can see through",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text('my own eyes...',
                      style: TextStyle(color: Colors.black)),
                ),
                Text('...more', style: TextStyle(color: Colors.grey)),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text('eisha_megan_action',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Text(' Angel', style: TextStyle(color: Colors.black)),
                Icon(
                  Icons.favorite_rounded,
                  color: Colors.red,
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Text('View all 7,839 comments',
                      style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('images/nirob.jpeg'))),
                    )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Add a comment...',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 100,
                ),
                Icon(
                  Icons.favorite_rounded,
                  color: Colors.red,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  FontAwesomeIcons.handshake,
                  color: Colors.orange,
                  size: 18,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  FontAwesomeIcons.plusSquare,
                  color: Colors.grey,
                  size: 18,
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18, top: 10),
                  child:
                      Text('8 hours ago', style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
