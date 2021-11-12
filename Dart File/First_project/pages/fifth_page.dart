import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fifth_page extends StatefulWidget {
  static const route = 'fifth';

  const Fifth_page({Key? key}) : super(key: key);

  @override
  _Fifth_pageState createState() => _Fifth_pageState();
}

class _Fifth_pageState extends State<Fifth_page> {
  int _tip_percentage = 0;
  double _bill_amount = 0;
  int _person_cnt = 1;
  double _total_tip = 0;

  tip_per_person(double Bill, int Tip, int Person) {
    double _tip_per_person;
    _tip_per_person = (total_tip(Bill, Tip)) / Person;

    return _tip_per_person.toStringAsFixed(2);
  }

  total_tip(double Bill, int Tip) {
    _total_tip = (Bill * Tip) / 100;
    return _total_tip;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * .30,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tips Per Person',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                      '\$ ${tip_per_person(_bill_amount, _tip_percentage, _person_cnt)}',
                      style: TextStyle(fontSize: 25))
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: ('Enter Bill Amount'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  label: Text('Bill Amount')),
              onChanged: (String in_value) {
                try {
                  _bill_amount = double.parse(in_value);
                } catch (ex) {
                  _bill_amount = 0.0;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Person'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            child: IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  if (_person_cnt > 1) {
                                    _person_cnt--;
                                  } else {}
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('$_person_cnt'),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                              child: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                _person_cnt++;
                              });
                            },
                          ))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tips'),
                      Text('$_tip_percentage%'),
                      Text('${(total_tip(_bill_amount, _tip_percentage))}'),
                    ],
                  ),
                ),
                Slider(
                  autofocus: false,
                  min: 0,
                  max: 100,
                  divisions: 50,
                  value: _tip_percentage.toDouble(),
                  onChanged: (double value) {
                    setState(() {
                      _tip_percentage = value.round();
                    });
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
