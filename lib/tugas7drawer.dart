import 'package:flutter/material.dart';
import 'package:ppkdjpzul/day16/checkbox.dart';
import 'package:ppkdjpzul/day16/date_picker.dart';
import 'package:ppkdjpzul/day16/dropdown.dart';
import 'package:ppkdjpzul/day16/switch.dart';
import 'package:ppkdjpzul/day16/time_picker.dart';

class Tugas7Drawer extends StatefulWidget {
  const Tugas7Drawer({super.key});

  @override
  State<Tugas7Drawer> createState() => _Tugas7DrawerState();
}

class _Tugas7DrawerState extends State<Tugas7Drawer> {
int _selectedIndex = 0;

static const List<Widget> _widgetOptions = [
  CheckboxPage(),
  SwitchPage(),
  DropdownPage(), 
  DatePickerPage(),
  TimePickerPage(),
];
 void onTapDrawer(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.pop(context); // Close the drawer after selection
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas 7 Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu Drawer'),
            ),
            ListTile(
              title: const Text('Checkbox'),
              onTap: () => onTapDrawer(0),
            ),
            ListTile(
              title: const Text('Switch'),
              onTap: () => onTapDrawer(1),
            ),
            ListTile(
              title: const Text('Dropdown'),
              onTap: () => onTapDrawer(2),
            ),
            ListTile(
              title: const Text('Date Picker'),
              onTap: () => onTapDrawer(3),
            ),
            ListTile(
              title: const Text('Time Picker'),
              onTap: () => onTapDrawer(4),
            ),
          ],
        ),
      ),
      body: _widgetOptions[_selectedIndex]
      );
    
  }
}