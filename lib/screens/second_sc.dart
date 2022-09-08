import 'package:flutter/material.dart';
import 'package:lab7/main.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Secound_sc();
  }
}

class Secound_sc extends StatefulWidget {
  const Secound_sc({super.key});

  @override
  State<Secound_sc> createState() => _Secound_scState();
}

class _Secound_scState extends State<Secound_sc> {
  List MyItems = ["2-5 Personal", "6-10 Personal", "10 - More Personal"];
  String selecteditem = "2-5 Personal";
  String groubby2 = "";
  bool myvalu = false;
  bool myval = false;
  bool myva = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.limeAccent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2013/11/15/13/57/road-210913__340.jpg"),
                fit: BoxFit.fill)),
        child: ListView(
          children: [
            Column(
              children: [
                Text(
                  "Please Enter your Information",
                  style: TextStyle(fontSize: 30),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.pink,
                  height: 40,
                ),
                Text(
                  "How many Personal",
                  style: TextStyle(fontSize: 30),
                ),
                DropdownButton(
                    dropdownColor: Colors.cyan,
                    value: selecteditem,
                    items: MyItems.map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: e,
                        )).toList(),
                    onChanged: ((val) {
                      setState(() {
                        selecteditem = val.toString();
                      });
                    })),
                Divider(
                  thickness: 1,
                  color: Colors.cyanAccent,
                  height: 40,
                ),
                Text(
                  "Please select your Types of flight classes",
                  style: TextStyle(fontSize: 25),
                ),
                RadioListTile(
                  title: Text(
                    "First Class ",
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                  ),
                  value: "older",
                  groupValue: groubby2,
                  onChanged: (val) {
                    setState(() {
                      groubby2 = val.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text(
                    "Business Class",
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                  ),
                  value: "olde",
                  groupValue: groubby2,
                  onChanged: (val) {
                    setState(() {
                      groubby2 = val.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text(
                    "Premium Economy Class",
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                  ),
                  value: "old",
                  groupValue: groubby2,
                  onChanged: (val) {
                    setState(() {
                      groubby2 = val.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text(
                    "Economy Class",
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                  ),
                  value: "ol",
                  groupValue: groubby2,
                  onChanged: (val) {
                    setState(() {
                      groubby2 = val.toString();
                    });
                  },
                ),
                Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 241, 6, 183),
                  height: 40,
                ),
                Text(
                  "Please select Your favorite AirLine",
                  style: TextStyle(
                      color: Color.fromARGB(255, 8, 240, 19), fontSize: 25),
                ),
                CheckboxListTile(
                  activeColor: Colors.pink,
                  secondary: Container(
                      color: Colors.pink, child: Icon(Icons.airline_seat_flat)),
                  value: myvalu,
                  title: Text(
                    "Royal Jordanian Airlines",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.pink,
                    ),
                  ),
                  onChanged: (val) {
                    setState(() {
                      myvalu = val!;
                    });
                  },
                ),
                CheckboxListTile(
                  secondary: Container(
                      color: Colors.green,
                      child: Icon(Icons.airline_seat_flat)),
                  activeColor: Colors.green,
                  value: myval,
                  title: Text(
                    "Jordan Aviation",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.green,
                    ),
                  ),
                  onChanged: (val) {
                    setState(() {
                      myval = val!;
                    });
                  },
                ),
                Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 248, 33, 4),
                  height: 40,
                ),
                MaterialButton(
                    textColor: Colors.indigo,
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: ((context) {
                          return MyApp();
                        })));
                      });
                    },
                    child: Text(
                      "Home Page ",
                      style: TextStyle(fontSize: 25),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
