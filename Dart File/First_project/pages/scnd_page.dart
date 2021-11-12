import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uidesign3/pages/fifth_page.dart';
import 'package:uidesign3/pages/fourth_page.dart';
import 'package:uidesign3/pages/sixth_page.dart';
import 'package:uidesign3/pages/third_page.dart';

class Scnd_page extends StatefulWidget {
  static const route = "";

  const Scnd_page({Key? key}) : super(key: key);

  @override
  _Scnd_pageState createState() => _Scnd_pageState();
}

class _Scnd_pageState extends State<Scnd_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent.shade100,
      appBar: AppBar(
        title: Text('NSI Property'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 80,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.red),
              child: Center(
                  child: Text(
                'Welcome To NSI System',
                style: TextStyle(fontSize: 25),
              )),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Press For Visit =>"),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(Third_page.route);
                                },
                                child: Icon(FontAwesomeIcons.whatsapp))
                          ],
                        ),
                      ),
                    ),
                    //alignment: Alignment.center,
                    height: 60,
                    width: 350,
                    //color: Colors.red,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Press For Visit =>"),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(Frth_page.route);
                                },
                                child: Icon(FontAwesomeIcons.instagram))
                          ],
                        ),
                      ),
                    ),
                    //alignment: Alignment.center,
                    height: 60,
                    width: 350,
                    //color: Colors.red,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Calculate Tips Per Person"),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(Fifth_page.route);
                                },
                                child: Icon(FontAwesomeIcons.peopleCarry))
                          ],
                        ),
                      ),
                    ),
                    //alignment: Alignment.center,
                    height: 60,
                    width: 350,
                    //color: Colors.red,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Press For Visit=>"),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(Sixth_page.route);
                                },
                                child: Icon(FontAwesomeIcons.calculator))
                          ],
                        ),
                      ),
                    ),
                    //alignment: Alignment.center,
                    height: 60,
                    width: 350,
                    //color: Colors.red,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
