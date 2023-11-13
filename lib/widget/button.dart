import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    int roomsCounter = 1;
    int adultsCounter = 1;
    int childrenCounter = 1;
    bool toogleSwitch = false;
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.grey[350],
            context: context,
            builder: (context) {
              return SizedBox(
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Rooms and Guests',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.close))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Rooms',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    )),
                                Row(
                                  children: [
                                    IconButton(
                                        color: Colors.blue,
                                        onPressed: () {
                                          if (roomsCounter < 1) {
                                            return;
                                          }
                                          setState(() {
                                            roomsCounter--;
                                          });
                                        },
                                        icon: const Icon(
                                            Icons.remove_circle_outline)),
                                    Text('$roomsCounter'),
                                    IconButton(
                                        color: Colors.blue,
                                        onPressed: () {
                                          setState(() {
                                            roomsCounter++;
                                          });
                                        },
                                        icon: const Icon(
                                            Icons.add_circle_outline))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Room 1',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Adults'),
                                    Row(
                                      children: [
                                        IconButton(
                                            color: Colors.blue,
                                            onPressed: () {
                                              if (adultsCounter < 1) {
                                                return;
                                              }
                                              setState(() {
                                                adultsCounter--;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.remove_circle_outline)),
                                        Text('$adultsCounter'),
                                        IconButton(
                                            color: Colors.blue,
                                            onPressed: () {
                                              if (adultsCounter == 4) {
                                                return;
                                              }
                                              setState(() {
                                                adultsCounter++;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.add_circle_outline))
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Children'),
                                    Row(
                                      children: [
                                        IconButton(
                                            color: Colors.blue,
                                            onPressed: () {
                                              if (childrenCounter < 0) {
                                                return;
                                              }
                                              setState(() {
                                                childrenCounter -= 1;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.remove_circle_outline)),
                                        Text('$childrenCounter'),
                                        IconButton(
                                            color: Colors.blue,
                                            onPressed: () {
                                              if (childrenCounter == 4) {
                                                return;
                                              }
                                              setState(() {
                                                childrenCounter += 1;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.add_circle_outline))
                                      ],
                                    ),
                                  ],
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Age of Child 1'),
                                    Text('14 Years Old'),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Age of Child 2'),
                                    Text('14 Years Old'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Pet-friendly',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                        ),
                                        const Icon(Icons.info_outlined)
                                      ],
                                    ),
                                    const Text(
                                      'Only show stays that allows pets',
                                      style: TextStyle(fontSize: 11),
                                    )
                                  ],
                                ),
                                Switch(
                                    activeColor: Colors.blue[900],
                                    value: toogleSwitch,
                                    onChanged: (value) {
                                      setState(() {
                                        toogleSwitch != value;
                                      });
                                    })
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blue[900])),
                          child: const Text('Apply'),
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
      },
      child: Container(
        height: 30,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 243, 92, 5),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12))),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'find hotels',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
