import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Mi Card',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          subtitle1: TextStyle(
            color: Colors.teal.shade900,
            fontFamily: 'Source Sans Pro',
            fontSize: 20.0,
          ),
        ),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/angela.jpg'),
              ),
              Text(
                'Angela Yu',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  color: Colors.teal.shade100,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              CustomCard(Icons.phone, '+44 123 456 789'),
              CustomCard(Icons.mail, 'angela@email.com'),
            ],
          ),
        ),
      ),
    ),
  );
}

class CustomCard extends StatelessWidget {
  final IconData iconData;
  final String text;

  CustomCard(this.iconData, this.text);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
      child: ListTile(
        leading: Icon(iconData, color: Colors.teal),
        title: Text(text),
      ),
    );
  }
}
