import 'package:flutter/material.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        color: isSwitched ? const Color.fromARGB(255, 0, 0, 0) : const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Aktifkan Mode Gelap", 
                style: TextStyle(

              color: isSwitched ? Colors.white : Colors.grey
              
            ),
            ),
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            ],
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              isSwitched 
              ? 'Mode Gelap Aktif' 
              : 'Mode Gelap Nonaktif',
              style: TextStyle(
                fontSize: 16, 
                color: isSwitched 
                ? Colors.white 
                : Colors.black,
              ),
            ),
          )
          ],
        )
      )
    );
  }
}