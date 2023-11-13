import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDateRange extends StatefulWidget {
  const MyDateRange({super.key});

  @override
  State<MyDateRange> createState() => _MyDateRangeState();
}

class _MyDateRangeState extends State<MyDateRange> {
  TextEditingController dateinput = TextEditingController();
  DateTimeRange dateTimeRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime(2101),
  );
  @override
  void initState() {
    dateinput.text = 'Select Date';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final start = dateTimeRange.start;
    final end = dateTimeRange.end;

    return Container(
      height: 49,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        style: TextStyle(
          fontSize: 12,
          color: Colors.blue[900],
        ),
        controller: dateinput,
        onTap: () async {
          var result = await showDateRangePicker(
            context: context,
            firstDate: DateTime.parse(
              DateFormat('yyyy-MM-dd').format(start),
            ),
            lastDate: DateTime.parse(
              DateFormat('yyyy-MM-dd').format(end),
            ),
          );
          if (result != null) {
            setState(() {
              dateinput.text = result.toString();
            });
          }
        },
        readOnly: true,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Color.fromARGB(255, 2, 31, 87),
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Color.fromARGB(255, 165, 199, 226),
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
