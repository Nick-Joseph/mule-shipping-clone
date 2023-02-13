import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  CustomCard(
      {Key? key,
      required this.companyTitle,
      required this.packageStatus,
      required this.deleveryTime,
      required this.isCardSelected})
      : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();

  final String companyTitle;
  final String packageStatus;
  final String deleveryTime;
  final bool isCardSelected;
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        height: 120,
        width: 350,
        child: InkWell(
          onTap: () {},
          child: Card(
            elevation: 0,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300, width: 1),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 20,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            widget.companyTitle,
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            widget.packageStatus,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Divider(
                    indent: 20,
                    endIndent: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Delivery time',
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                          Text(
                            widget.deleveryTime,
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            'Collection date',
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                          Text('Tomorrow'),
                        ],
                      ),
                      Column(
                        children: const [
                          Text(
                            'Price(inc.VAT)',
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                          Text('€5.36'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
