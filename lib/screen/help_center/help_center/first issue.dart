//I want to track my order__________________________________________________________________

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class first_issue extends StatefulWidget {
  const first_issue({super.key});

  @override
  State<first_issue> createState() => _first_issueState();
}

class _first_issueState extends State<first_issue> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            "I want to track my order",
            style: GoogleFonts.montserrat(
                fontSize: 17, fontWeight: FontWeight.w400),
          ),
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
            padding: EdgeInsets.only(left: 8, top: 4, right: 10),
            child: Icon(
              Icons.shopping_cart_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 238, 238, 238),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                    child: Text('Frequently asked questions',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: const <Widget>[
                  ExpansionTile(
                    title: Text('How Do I track my DWJ order?'),
                    children: <Widget>[
                      ListTile(
                          title: Text(
                              'Go to My Orders in your DMJ account to track\nyour package')),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('How do I track my DMJ delivery?'),
                    children: <Widget>[
                      ListTile(
                          title: Text(
                              'You can track the location of your package by\nentering your tracking ID here.')),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('How do I find my order details?'),
                    children: <Widget>[
                      ListTile(
                          title: Text(
                              'Go to My Orders in your DMJ account to find\ndetails for all your orders.')),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('What if I miss my DMJ order delivery?'),
                    children: <Widget>[
                      ListTile(
                          title: Text(
                              'Do nto worry,the delivery agent will try to deliver again on the next working day. You can also call the delivery agent to get the lastest delivery update.')),
                    ],
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
