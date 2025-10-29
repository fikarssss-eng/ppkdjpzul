import 'package:flutter/material.dart';
import 'package:ppkdjpzul/day16/tugas7.dart';

class Tugas8Page extends StatefulWidget {
  const Tugas8Page({super.key});

  @override
  State<Tugas8Page> createState() => _Tugas8PageState();
}

class _Tugas8PageState extends State<Tugas8Page> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = <Widget>[
      const Tugas7Drawer(),
      const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tentang Aplikasi',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Aplikasi ini dibuat untuk menampilkan '
              'widget seperti '
              'Dropdown, Checkbox, dan Bottom Navigation.',
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Pembuat: Zulfikar\nVersi: 1.0.0',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ];

    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.warning), label: 'Tentang Aplikasi'),
        ],
      ),
    );
  }
}
