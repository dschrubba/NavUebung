
// Screen 1
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
        backgroundColor: Colors.red[300],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red[100]!, Colors.red[300]!],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home,
                size: 80,
                color: Colors.red[700],
              ),
              SizedBox(height: 20),
              Text(
                'Willkommen auf Screen 1',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[800],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Das ist der erste Bildschirm',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red[600],
                ),
              ),
              SizedBox(height: 30),
              // Beispiel-Button für Stack Navigation

            ],
          ),
        ),
      ),
    );
  }
}
