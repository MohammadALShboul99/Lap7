import 'package:flutter/material.dart';
import 'package:lab7/main.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return First_sc();
  }
}

class First_sc extends StatefulWidget {
  const First_sc({super.key});

  @override
  State<First_sc> createState() => _First_scState();
}

class _First_scState extends State<First_sc> {
  String groubby = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2013/11/30/15/56/airplane-221526__340.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            MaterialButton(
              textColor: Colors.blue,
              color: Colors.white,
              onPressed: () {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                    return MyApp();
                  })));
                });
              },
              child: Text("Press To Back "),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 50,
              child: Text(
                "Where you want to travel ?",
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RadioListTile(
              secondary: Icon(Icons.travel_explore),
              title: Text(
                "USA",
                style: TextStyle(color: Color.fromARGB(255, 90, 23, 3)),
              ),
              subtitle: Text(
                  "Eg: Newyork City , Virginia ,Washington ,Texas , Las Vegas"),
              value: "vas",
              groupValue: groubby,
              onChanged: (val) {
                setState(() {
                  groubby = val.toString();
                });
              },
            ),
            RadioListTile(
              secondary: Icon(Icons.travel_explore),
              title: Text(
                "Lebanon",
                style: TextStyle(color: Color.fromARGB(255, 1, 51, 5)),
              ),
              subtitle: Text("Eg: Beirut , Sidon,Chtoura ,Zahle"),
              value: "va",
              groupValue: groubby,
              onChanged: (val) {
                setState(() {
                  groubby = val.toString();
                });
              },
            ),
            RadioListTile(
              secondary: Icon(Icons.travel_explore),
              title: Text(
                "Turkey",
                style: TextStyle(color: Color.fromARGB(249, 5, 9, 238)),
              ),
              subtitle: Text("Eg: Istanbul , Antalya ,Trabzon ,Ankara"),
              value: "vaa",
              groupValue: groubby,
              onChanged: (val) {
                setState(() {
                  groubby = val.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
