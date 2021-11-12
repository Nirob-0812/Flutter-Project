import 'package:flutter/material.dart';

class Third_page extends StatelessWidget {
  static const route = "Third";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        initialIndex: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green.shade900,
            actions: [
              Icon(Icons.search_outlined),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.more_vert_outlined),
            ],
            title: Text('WhatsApp'),
            bottom: TabBar(
              tabs: [
                Icon(Icons.camera_alt_outlined),
                Text('CHAT'),
                Text('STATUS'),
                Text('CALLS'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('Camera Page'),
              ),
              chat_page(),
              status_page(),
              call_page(),
            ],
          ),
        ),
      ),
    );
  }
}

//Chat Page
class chat_page extends StatelessWidget {
  const chat_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green.shade900,
        child: Icon(Icons.chat_rounded),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext, int) {
            return Column(
              children: [
                ListTile(
                    title: Text(
                      'Kajal Aggarwal',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/Kajal.jpg'),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.missed_video_call,
                          color: Colors.red,
                        ),
                        Text(
                          'You missed a call fro...',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          'Yesterday',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.green.shade900,
                          radius: 14,
                          child: Text('3'),
                        )
                      ],
                    )),
                ListTile(
                    title: Text(
                      'Katrina Kaif',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/katrina.jpg'),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.photo,
                          color: Colors.grey,
                        ),
                        Text(
                          'Photo',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        )
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Text(
                          '11:41 am',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        CircleAvatar(
                          child: Text(1.toString()),
                          radius: 14,
                          backgroundColor: Colors.green.shade900,
                        )
                      ],
                    )),
                //SizedBox(height: 10,),
                ListTile(
                  title: Text(
                    'Parineeti Chopra',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/parineeti.jpeg'),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.call_received,
                        color: Colors.red,
                      ),
                      Text(
                        'Ok done..my love',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Icon(
                        Icons.favorite_rounded,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.favorite_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  trailing: Text(
                    '11:41 am',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
//Status Page

class status_page extends StatelessWidget {
  const status_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListTile(
          title: Text('My status',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text('Tab to add status update'),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('images/nirob.jpeg'),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.edit,
                size: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green.shade900,
              child: Icon(
                Icons.camera_alt_rounded,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Call Page

class call_page extends StatelessWidget {
  const call_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green.shade900,
          child: Icon(Icons.call),
        ),
        body: ListTile(
          title: Text(
            'Katrina Kaif',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.missed_video_call,
                color: Colors.red,
              ),
              Text(
                'You missed a video chat..7:08pm',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              )
            ],
          ),
          trailing: Icon(
            Icons.missed_video_call,
            size: 30,
            color: Colors.red,
          ),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('images/katrina.jpg'),
          ),
        ),
      ),
    );
  }
}
