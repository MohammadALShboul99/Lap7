import 'package:flutter/material.dart';
import 'package:lab7/screens/First_sc.dart';
import 'package:lab7/screens/second_sc.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: ThemeData(fontFamily: 'Lobster'),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/07/03/20/17/colorful-2468874__340.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.lime[200],
                  border: Border.all(color: Colors.lime)),
              child: Container(
                decoration: BoxDecoration(color: Colors.lime[700]),
                margin: EdgeInsets.all(14),
                width: 400,
                height: 200,
                child: Text(
                  "My Name is Mohammad AL Shboul I Want To Travel Give Me i choice",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            SizedBox(
              height: 270,
            ),
            MaterialButton(
                textColor: Colors.cyan,
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return First();
                    })));
                  });
                },
                child: Text(
                  "press to Show You My Favorite Places  ",
                  style: TextStyle(fontSize: 23),
                )),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
                textColor: Colors.indigo,
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return Second();
                    })));
                  });
                },
                child: Text(
                  "Click to book a ticket ",
                  style: TextStyle(fontSize: 25),
                )),
          ],
        ),
      ),
    );
  }
}
