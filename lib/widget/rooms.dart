import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  const Rooms({super.key});

  @override
  Widget build(BuildContext context) {
    var value = '0';
    List<DropdownMenuItem> rooms = [
      DropdownMenuItem(
        value: '0',
        child: Text(
          'Select Room',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.blue[900], fontWeight: FontWeight.normal),
        ),
      ),
      DropdownMenuItem(
        value: '1',
        child: Text(
          '1 Room, 1 Adult, 0 Children',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.blue[900], fontWeight: FontWeight.normal),
        ),
      ),
      DropdownMenuItem(
        value: '2',
        child: Text(
          '1 Room, 2 Adult, 0 Children',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.blue[900], fontWeight: FontWeight.normal),
        ),
      ),
      DropdownMenuItem(
        value: '3',
        child: Text(
          '1 Room, 1 Adult, 1 Child',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.blue[900], fontWeight: FontWeight.normal),
        ),
      ),
      DropdownMenuItem(
        value: '4',
        child: Text(
          '2 Room, 4 Adult, 0 Children',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.blue[900], fontWeight: FontWeight.normal),
        ),
      ),
      DropdownMenuItem(
        value: '5',
        child: Text(
          '2 Room, 3 Adult, 1 Children',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.blue[900], fontWeight: FontWeight.normal),
        ),
      ),
      DropdownMenuItem(
        value: '6',
        child: Text(
          '2 Room, 2 Adult, 0 Children',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.blue[900], fontWeight: FontWeight.normal),
        ),
      ),
      DropdownMenuItem(
        value: '7',
        child: Text(
          '3 Room, 3 Adult, 1 Children',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.blue[900], fontWeight: FontWeight.normal),
        ),
      ),
    ];
    return Container(
      height: 46,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: DropdownButtonFormField(
        decoration: const InputDecoration(
            border: UnderlineInputBorder(borderSide: BorderSide.none)),
        padding: const EdgeInsets.only(bottom: 15, left: 25),
        value: value,
        items: rooms,
        onChanged: (val) {},
      ),
    );
  }
}
