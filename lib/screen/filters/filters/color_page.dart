import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class FilterbyColor extends StatefulWidget {
  const FilterbyColor({super.key});

  @override
  State<FilterbyColor> createState() => _FilterbyColorState();
}

class _FilterbyColorState extends State<FilterbyColor> {
  List<MyColorClass> widgetList = [
    MyColorClass("Red", Colors.red),
    MyColorClass("Orange", Colors.orange),
    MyColorClass("Blue", Colors.blue),
    MyColorClass("Black", Colors.black),
    MyColorClass("Pink", Colors.pink),
    MyColorClass("Yellow", Colors.yellow),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: GridView.count(
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          childAspectRatio: (100 / 80),
          shrinkWrap: true,
          children: widgetList.map((MyColorClass value) {
            return Mywideget(
              title: value.title,
              color: value.color,
            ).pOnly(top: 10);
          }).toList(),
        ).p(10));
  }
}

class Mywideget extends StatefulWidget {
  final String title;
  final Color color;
  const Mywideget({super.key, required this.title, required this.color});

  @override
  State<Mywideget> createState() => _MywidegetState();
}

class _MywidegetState extends State<Mywideget> {
  bool myValue = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Center(
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: widget.color,
                      borderRadius: BorderRadius.circular(500),
                    ),
                  ).p(4),
                ),
              ),
            ),
            10.heightBox,
            Text(
              widget.title,
              style: GoogleFonts.montserrat(color: Colors.black),
            ),
          ]),
    );
  }
}

class MyColorClass {
  final String title;
  final Color color;

  MyColorClass(this.title, this.color);
}
