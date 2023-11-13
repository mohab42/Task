import 'package:flutter/material.dart';
import 'package:task/widget/button.dart';
import 'package:task/widget/date_range.dart';
import 'package:task/widget/rooms.dart';
import 'package:task/widget/select_city.dart';
import 'package:task/widget/select_country.dart';

class SearchForm extends StatefulWidget {
  const SearchForm({super.key});

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 0),
            width: 120,
            color: Colors.blue.shade900,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Hotels Search',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.left,
            ),
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.blue.shade900,
                  Colors.blue,
                ])),
                height: 290,
                child: const Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          City(),
                          MyDateRange(),
                          Country(),
                          Rooms(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const MyButton()
            ],
          ),
        ],
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.width);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
