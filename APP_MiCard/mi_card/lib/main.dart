import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MiCARD",
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage("images/self.jpg"),
              ),
              Text(
                "MUHIT KHAN",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "ENTHUSIAST PROGRAMMER",
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 17.5,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 30.0,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15.0,
                      ),
                      Icon(
                        Icons.add_ic_call_sharp,
                        size: 25.0,
                        color: Colors.teal.shade900,
                      ),
                      SizedBox(
                        width: 45.0,
                      ),
                      Text(
                        "+91 7894 978567",
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 30.0,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15.0,
                      ),
                      Icon(
                        Icons.email,
                        size: 25.0,
                        color: Colors.teal.shade900,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "muhitkhan_bd@outlook.com",
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
