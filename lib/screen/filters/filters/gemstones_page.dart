import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class MyGemstonePage extends StatefulWidget {
  const MyGemstonePage({super.key});

  @override
  State<MyGemstonePage> createState() => _MyGemstonePageState();
}

class _MyGemstonePageState extends State<MyGemstonePage> {
  List<String> widgetList = [
    "Dimond",
    "Dimond",
    "Dimond",
    "Dimond",
    "Dimond"
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
          childAspectRatio: (200/80),
          
          shrinkWrap: true,
          children: widgetList.map((String value) {
            return Mywideget(title: value);
          }).toList(),
    ));
  }
}

class Mywideget extends StatefulWidget {
  final String title;
  const Mywideget({super.key, required this.title});

  @override
  State<Mywideget> createState() => _MywidegetState();
}

class _MywidegetState extends State<Mywideget> {
  bool myValue = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(
                value: myValue,
                onChanged: ((value) => setState(() => myValue = value!))),
             Text(widget.title, style: GoogleFonts.montserrat(
              color: Colors.black,
             ),),
          ]),
    );
  }
}
