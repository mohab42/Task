import 'package:flutter/material.dart';
import 'package:task/widget/form_widget.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/attachment3.webp'),
              fit: BoxFit.cover),
        ),
        child: const Center(
          child: SearchForm(),
        ),
      ),
    );
  }
}
