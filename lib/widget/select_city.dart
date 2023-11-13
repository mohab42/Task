import 'package:flutter/material.dart';

class City extends StatelessWidget {
  const City({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 45,
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 172, 214, 248), width: 1),
              borderRadius: BorderRadius.circular(25)),
          child: const Center(
            child: Text('Select City',
                style: TextStyle(color: Color.fromARGB(255, 8, 55, 94))),
          ),
        ),
      ),
    );
  }
}
