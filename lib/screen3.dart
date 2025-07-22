// Screen 3
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
        backgroundColor: Colors.blue[300],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue[100]!, Colors.blue[300]!],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.school,
                size: 80,
                color: Colors.blue[700],
              ),
              SizedBox(height: 20),
              Text(
                'Hier ist Screen 3',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Der dritte und letzte Bildschirm',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue[600],
                ),
              ),
              SizedBox(height: 30),

            ],
          ),
        ),
      ),
    );
  }
}