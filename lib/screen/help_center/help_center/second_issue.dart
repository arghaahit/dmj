//I want to track my order__________________________________________________________________

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class second_issue extends StatefulWidget {
  const second_issue({super.key});

  @override
  State<second_issue> createState() => _second_issueState();
}

class _second_issueState extends State<second_issue> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            "I want to contect the seller",
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
              height: 150,
              width: double.infinity,
              color: Colors.white,
               child: const Padding(
                 padding: EdgeInsets.all(18),
                 child: Text('DMJ.com is a markatplace on which thrid-party sellers sell products to customers.To contact a seller,please send a letter with the below address on the envelope and include product page Url so it can be forwaded to the seller.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
               ),
              
            ),
            const SizedBox(height: 8,),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(18),
                    child: Text('I want to contect the seller about a grievance',
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
                    title: Text('Click here for address'),
                    children: <Widget>[
                      ListTile(
                          title: Text(
                              'To,\n"Include Seller`s name"\nSeller Mailbox:Contact Seller c/o DMJ Internet Private Limited,')),
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
