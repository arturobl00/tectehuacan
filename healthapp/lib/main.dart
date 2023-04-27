import 'package:flutter/material.dart';
import 'package:healthapp/pages/category.dart';
import 'package:healthapp/pages/home.dart';
import 'package:healthapp/pages/messages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screens = [const Home(), const Categories(), const Messages()];
    final colorbarra = [
      Colors.blueAccent[700],
      Colors.blueAccent[400],
      Colors.blueAccent
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HealthAPP',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: colorbarra[selectedIndex],
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "",
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 34, 113, 177),
        body: screens[selectedIndex],
      ),
    );
  }
}
