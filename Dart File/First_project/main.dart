import 'package:flutter/material.dart';
import 'package:uidesign3/pages/fifth_page.dart';
import 'package:uidesign3/pages/fst_page.dart';
import 'package:uidesign3/pages/fourth_page.dart';
import 'package:uidesign3/pages/scnd_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uidesign3/pages/sixth_page.dart';
import 'package:uidesign3/pages/third_page.dart';

void main() {
  runApp(main_page());
}

class main_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => firstpage(),
        Scnd_page.route: (context) => Scnd_page(),
        Third_page.route: (context) => Third_page(),
        Frth_page.route: (context) => Frth_page(),
        Fifth_page.route: (context) => Fifth_page(),
        Sixth_page.route: (context) => Sixth_page(),
      },
    );
  }
}
