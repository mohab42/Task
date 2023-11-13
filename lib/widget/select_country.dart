import 'package:flutter/material.dart';

class Country extends StatelessWidget {
  const Country({super.key});

  @override
  Widget build(BuildContext context) {
    var value = '0';
    List<DropdownMenuItem> countries = [
      DropdownMenuItem(
        value: '0',
        child: Text(
          'Select Nationality',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.blue[900], fontWeight: FontWeight.normal),
        ),
      ),
      DropdownMenuItem(
        value: '1',
        child: Text(
          'Egypt',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.blue[900], fontWeight: FontWeight.normal),
        ),
      ),
      DropdownMenuItem(
        value: '2',
        child: Text(
          'Saudi Arabia',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.blue[900], fontWeight: FontWeight.normal),
        ),
      ),
      DropdownMenuItem(
        value: '3',
        child: Text(
          'Kwuat',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.blue[900], fontWeight: FontWeight.normal),
        ),
      ),
      DropdownMenuItem(
        value: '4',
        child: Text(
          'Palastine',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.blue[900], fontWeight: FontWeight.normal),
        ),
      ),
      DropdownMenuItem(
        value: '5',
        child: Text(
          'Morocco',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.blue[900], fontWeight: FontWeight.normal),
        ),
      ),
      DropdownMenuItem(
        value: '6',
        child: Text(
          'UAE',
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
        items: countries,
        onChanged: (val) {},
      ),
    );
  }
}
