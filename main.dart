import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green], // Replace with your desired gradient colors
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0,
              shape: CircleBorder(),
            ),
            onPressed: () {
              _showEventDialog(context);
            },
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.black12, Colors.greenAccent], // Replace with your desired gradient colors
                ),
              ),
              child: Icon(
                Icons.event,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showEventDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('College Events'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                _buildEventItem('Event 1', 'Sport Week'),
                _buildEventItem('Event 2', 'Farewell'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildEventItem(String title, String description) {
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
    );
  }
}
