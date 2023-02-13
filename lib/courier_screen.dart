import 'package:flutter/material.dart';
import 'package:mule_clone/constant.dart';

import 'custom_card.dart';

class CourierPage extends StatefulWidget {
  CourierPage({Key? key}) : super(key: key);

  @override
  State<CourierPage> createState() => _CourierPageState();
}

class _CourierPageState extends State<CourierPage> {
  List<bool> isSelected = [false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff5800E0),
          elevation: 0,
          title: const Text('Couriers'),
          leading: const Icon(Icons.refresh_rounded),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: const [
                  Text(
                    'Choose a courier option',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ToggleButtons(
                    selectedBorderColor: const Color(0xff5800E0),
                    fillColor: const Color(0xffF9F3FE),
                    borderRadius: BorderRadius.circular(5.0),
                    isSelected: isSelected,
                    onPressed: (int index) {
                      setState(() {
                        isSelected[index] = !isSelected[index];
                      });
                    },
                    children: const [
                      SizedBox(
                        width: 150,
                        child: Center(
                          child: Text(
                            'by Price',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Center(
                          child: Text(
                            'by Speed',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      )
                    ]),
              ],
            ),
            CustomCard(
              companyTitle: 'Hermes',
              deleveryTime: '2-3 Days',
              packageStatus: 'Drop Off, Tracked',
              isCardSelected: false,
            ),
            CustomCard(
              companyTitle: 'DHL Standard',
              packageStatus: 'Collection,Tracked',
              deleveryTime: '2-3 days',
              isCardSelected: false,
            ),
            CustomCard(
              companyTitle: 'Mule Bag',
              packageStatus: 'Drop Off, Tracked',
              deleveryTime: '4 days',
              isCardSelected: false,
            ),
            CustomCard(
              companyTitle: 'Hermes Next Day',
              packageStatus: '',
              deleveryTime: '',
              isCardSelected: false,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Hello'),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Hello'),
          ],
        ));
  }
}
