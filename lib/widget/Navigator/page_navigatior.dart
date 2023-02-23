import 'package:diwamjewells/color/app_componet_color.dart';
import 'package:diwamjewells/screen/My_card.dart';
import 'package:diwamjewells/screen/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBottomNavigator extends StatefulWidget {
  final Function? openDrawer;
  const MyBottomNavigator({super.key, required this.openDrawer});

  @override
  State<MyBottomNavigator> createState() => _MyBottomNavigatorState();
}

class _MyBottomNavigatorState extends State<MyBottomNavigator> {
  @override
  Widget build(BuildContext context) {             
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: AppColor.appBarCollor,
            borderRadius: BorderRadius.circular(500),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(4, 4),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 22,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, CupertinoPageRoute(builder: (context) => const My_card()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 22,
                        ),
                        Text(
                          "Cart",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const Account()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 22,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26.0, right: 26.0),
                child: InkWell(
                  onTap: () {
                    if (widget.openDrawer != null) {
                      widget.openDrawer!();
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 22,
                      ),
                      Text(
                        "Menu",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
