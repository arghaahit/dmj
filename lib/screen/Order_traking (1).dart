import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_tracker/order_tracker.dart';
class Treaking extends StatefulWidget {
  const Treaking({super.key});

  @override
  State<Treaking> createState() => _TreakingState();
}

class _TreakingState extends State<Treaking> {

   List<TextDto> orderList = [
    TextDto("Your order has been placed", "Fri, 25th Mar '23 - 10:47pm"),
    TextDto("Seller ha processed your order", "Sun, 27th Mar '23 - 10:19am"),
    TextDto("Your item has been picked up by courier partner.", "Tue, 29th Mar '23 - 5:00pm"),
  ];

  List<TextDto> shippedList = [
    TextDto("Your order has been shipped", "Tue, 29th Mar '23 - 5:04pm"),
    TextDto("Your item has been received in the nearest hub to you.", null),
  ];

  List<TextDto> outOfDeliveryList = [
    TextDto("Your order is out for delivery", "Thu, 31th Mar '23 - 2:27pm"),
  ];

  List<TextDto> deliveredList = [
    TextDto("Your order has been delivered", "Thu, 31th Mar '23 - 3:58pm"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 4, top: 9, bottom: 8),
              child: Icon(Icons.arrow_back_rounded),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "My Order",
                style: GoogleFonts.montserrat(
                    fontSize: 17, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.search_outlined,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
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
        color: const Color.fromARGB(255, 218, 217, 217),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 35),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 35, left: 5),
                              child: Text(
                                'Order',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 138, 138, 138),
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 35,
                              ),
                              child: Text(
                                '#8973536',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 138, 138, 138),
                                    fontSize: 12),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 35, left: 5),
                              child: Text(
                                'Cash on Delivery',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 138, 138, 138),
                                    fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 35,
                              ),
                              child: Text(
                                " 99.30",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 138, 138, 138),
                                    fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "PantalooNs Women's high Low\nDark Blue Dress",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Exp:Deliver by Sun,June 11"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.all(12),
               child: OrderTracker(
          status: Status.delivered,
          activeColor: const Color.fromARGB(255, 176, 20, 190),
          inActiveColor: Colors.grey[300],
          orderTitleAndDateList: orderList,
          shippedTitleAndDateList: shippedList,
          outOfDeliveryTitleAndDateList: outOfDeliveryList,
          deliveredTitleAndDateList: deliveredList,
        ),
             ),
          ],
        ),
      ),
    );
  }
}
