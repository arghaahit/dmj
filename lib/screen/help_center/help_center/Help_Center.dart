import 'package:diwamjewells/color/app_componet_color.dart';
import 'package:diwamjewells/screen/help_center/help_center/3rd_issue.dart';
import 'package:diwamjewells/screen/help_center/help_center/first%20issue.dart';
import 'package:diwamjewells/screen/help_center/help_center/second_issue.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.appBarCollor,
        title: Text(
                "24x7 Customer support",
                style: GoogleFonts.montserrat(
                    fontSize: 17, fontWeight: FontWeight.w400),
              ),
        actions: const [
            Padding(
              padding: EdgeInsets.only(top: 4),
              child: Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 4,right: 15),
              child: Icon(
                Icons.shopping_cart_sharp,
                color: Colors.white,
              ),
            ),],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 238, 238, 238),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 95,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "Get quick customer support by\nselecting your item",
                        style: GoogleFonts.montserrat(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 134, 134, 134),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ).pOnly(left: 8, right: 6, top: 10),
                ],
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text('What issue are you facing?',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 15),
                            child: InkWell(
                              onTap: () => Navigator.push(context, CupertinoPageRoute(builder: (context)=> const first_issue())),
                              child: const Text(
                                "I want to track my order",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 37, 37, 37)),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Check order status & call the delivery agent",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 150, 150, 150)),
                            ),
                          ),
                        ]),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: Color.fromARGB(255, 97, 97, 97),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              "I want to manage my order",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 37, 37, 37)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Cancel,change delivery data & address",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 150, 150, 150)),
                            ),
                          ),
                        ]),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: Color.fromARGB(255, 97, 97, 97),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 15),
                            child: InkWell(
                              onTap: () => Navigator.push(context, CupertinoPageRoute(builder: (context)=> const IIIrd_issue())),
                            child: const Text(
                              "I want help with other issues",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 37, 37, 37)),
                            ),
                          ),),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Offset.payment,Flipkart Plus & all other issues",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 150, 150, 150)),
                            ),
                          ),
                        ]),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: Color.fromARGB(255, 97, 97, 97),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 15),
                            child:InkWell(
                              onTap: () => Navigator.push(context, CupertinoPageRoute(builder: (context)=> const second_issue())),
                            child: const Text(
                              "I want to contect the seller ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 37, 37, 37)),
                            ),
                          ),)
                        ]),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: Color.fromARGB(255, 97, 97, 97),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 18, top: 18
                            ),
                            child: Text(
                              "Browse Help Topics",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 37, 37, 37)),
                            ),
                          ),
                        ]),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                        color: Color.fromARGB(255, 97, 97, 97),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
