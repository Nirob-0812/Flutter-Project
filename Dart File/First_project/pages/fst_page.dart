import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uidesign3/pages/scnd_page.dart';

class firstpage extends StatelessWidget {
  TextEditingController username = new TextEditingController();
  TextEditingController userpin = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(4, 5),
                          spreadRadius: 4,
                          blurRadius: 8)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/images.png'))),
              ),
            ),
            Icon(
              FontAwesomeIcons.user,
              size: 40,
              color: Colors.blueAccent,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'NSI USER',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    label: Text('Username'),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        FontAwesomeIcons.user,
                        size: 30,
                      ),
                    ),
                    hintText: ('Enter Username')),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: userpin,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    label: Text('Password'),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.lock,
                        size: 35,
                      ),
                    ),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: ('Enter Password')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 230),
              child: Text(
                'Forgot Your Password?',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                //alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    if (username.text == "Nirob0812" &&
                            userpin.text == "12345" ||
                        username.text == "Liza01" && userpin.text == "12345") {
                      Navigator.of(context).pushNamed(Scnd_page.route);
                    }
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                )),
            SizedBox(
              height: 5,
            ),
            Text('Or'),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.facebook,
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Continue with facebook',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.google,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Continue with google',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "By continuing you agree to NSI Business's",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(' Terms of '),
                    ],
                  ),
                  Text('Service, Privacy Policey'),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not on NSI Business yet?'),
                      Text(
                        ' Sign Up',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
