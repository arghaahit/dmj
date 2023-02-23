import 'package:diwamjewells/color/app_componet_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class My_card extends StatefulWidget {
  const My_card({super.key});

  @override
  State<My_card> createState() => _My_cardState();
}

class _My_cardState extends State<My_card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.appBarCollor,
        title: Text(
          "My Cart",
          style: GoogleFonts.montserrat(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 219, 219, 219),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15, top: 15),
                                    child: Text("Deliver to:"),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, top: 15),
                                    child: Text("Bablu..., 302002",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 15, top: 8),
                                child: Text(
                                  "94,98, Laxmi Narayan Puri,jaipur",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 136, 136, 136)),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 8),
                      child: Container(
                        height: 35,
                        width: 5,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: const Color.fromARGB(255, 214, 214, 214),
                                width: 3)),
                        child: const Center(
                            child: Text(
                          "Change",
                          style: TextStyle(color: Colors.blue),
                        )),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Expanded(
              flex: 8,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const MyOrderCard();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class MyOrderCard extends StatefulWidget {
  const MyOrderCard({super.key});

  @override
  State<MyOrderCard> createState() => _MyOrderCardState();
}

class _MyOrderCardState extends State<MyOrderCard> {
  var rating = 0.0;
  final List<String> items = [
    'Qty:1',
    'Qty:2',
    'Qty:3',
    'Qty:4',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 230,
        width: 100,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          color: Colors.grey,
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            hint: Text(
                              'Qty:1',
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                            items: items
                                .map((Qty) => DropdownMenuItem<String>(
                                      value: Qty,
                                      child: Text(
                                        Qty,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value as String;
                              });
                            },
                            buttonHeight: 40,
                            buttonWidth: 70,
                            itemHeight: 40,
                          ),
                        ),
                      ],
                    )),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "APPLE iPhone 11 (Black,64 GB)",
                            style: TextStyle(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: SmoothStarRating(
                              color: Colors.orange,
                              rating: 4,
                              size: 20,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              defaultIconData: Icons.star_border,
                              starCount: 5,
                              allowHalfRating: true,
                              spacing: 2.0,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '₹43,900',
                                style: TextStyle(
                                    fontSize: 16,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("₹39,999",
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              Text("8% off",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.blue)),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text("+ ₹69 Secured Packaging Fee",
                              style: TextStyle(
                                fontSize: 12,
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("2 offers applied *",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue)),
                              Text(" 6 offers available",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 1, left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Delivery by Mon Jan 9 |"),
                  Text(
                    "Free Delivery",
                    style: TextStyle(color: Colors.blue),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text("₹40"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromARGB(255, 36, 36, 36),
                            width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 1, left: 35, right: 5),
                          child: Center(
                              child: Icon(
                            CupertinoIcons.trash,
                            color: Colors.red,
                            size: 20,
                          )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1),
                          child: Center(
                              child: Text("Remove",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 110, 110, 110)))),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color.fromARGB(255, 53, 53, 53),
                            width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 1, left: 20),
                          child: Center(
                              child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.green,
                            size: 20,
                          )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1),
                          child: Center(
                              child: Text(
                            "Buy this now",
                            style: TextStyle(
                                color: Color.fromARGB(255, 110, 110, 110)),
                          )),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
