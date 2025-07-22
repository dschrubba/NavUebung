import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nav/screen1.dart';
import 'package:nav/screen2.dart';
import 'package:nav/screen3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  final PageController pageController = PageController(
    keepPage: true,
    initialPage: 0
    );

  // This method is called when a NavigationDestination is selected
  void _onNavigationItemSelected(int index) {
    setState(() {
      currentIndex = index;
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Aufgabe',
      home: Scaffold(
        body: PageView(
          controller: pageController,
          // This method is called when the PageView's page changes (e.g., by swiping)
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
              log("PageView: onPageChanged, currentIndex set to $currentIndex");
            });
          },
          children: [Screen1(), Screen2(), Screen3()],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: const [ // Added const for performance
            NavigationDestination(icon: Icon(Icons.one_k),   label: "Screen 1"),
            NavigationDestination(icon: Icon(Icons.two_k),   label: "Screen 2"),
            NavigationDestination(icon: Icon(Icons.three_k), label: "Screen 3"),
          ],
          selectedIndex: currentIndex,
          onDestinationSelected: _onNavigationItemSelected,
        ),
      ),
    );
  }
}