import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IIIrd_issue extends StatefulWidget {
  const IIIrd_issue({super.key});

  @override
  State<IIIrd_issue> createState() => _IIIrd_issueState();
}

class _IIIrd_issueState extends State<IIIrd_issue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
            ],
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
              padding: EdgeInsets.only(left: 10, top: 4, right: 15),
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
            color: Color.fromARGB(255, 238, 238, 238),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(13),
                        child: Text(
                          'Select an issue',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      )),
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 15, left: 10),
                            child: Icon(
                              Icons.indeterminate_check_box_sharp,
                              size: 28,
                              color: Color.fromARGB(255, 26, 40, 236),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 5, top: 20),
                                  child: Text(
                                    "Order Related Queries",
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
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 15, left: 10),
                            child: Icon(
                              Icons.person_sharp,
                              size: 28,
                              color: Color.fromARGB(255, 26, 40, 236),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 5, top: 20),
                                  child: Text(
                                    "Account Related Queries",
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
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 15, left: 10),
                            child: Icon(
                              Icons.payments_sharp,
                              size: 28,
                              color: Color.fromARGB(255, 26, 40, 236),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 5, top: 20),
                                  child: Text(
                                    "Payment Related Queries",
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
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 15, left: 10),
                            child: Icon(
                              Icons.discount_sharp,
                              size: 28,
                              color: Color.fromARGB(255, 26, 40, 236),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 5, top: 20),
                                  child: Text(
                                    "Offer Related Queries",
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
                ])));
  }
}
