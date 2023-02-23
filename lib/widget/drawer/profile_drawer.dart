import 'package:diwamjewells/color/app_componet_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileDrower extends StatefulWidget {
  const ProfileDrower({super.key});

  @override
  State<ProfileDrower> createState() => _ProfileDrowerState();
}

class _ProfileDrowerState extends State<ProfileDrower> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 0.1,
      width: 280,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColor.appBarCollor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5000),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://test.diwamjewels.com/assets/images/dmj.png")),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Diwam Jewels",
                            style: GoogleFonts.sacramento(
                              color: Colors.white,
                              fontSize: 35,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hey Argha Das",
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(top: 0, left: 18, right: 11),
                        child: Catagory(),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Catagory extends StatefulWidget {
  const Catagory({super.key});

  @override
  State<Catagory> createState() => _CatagoryState();
}

class _CatagoryState extends State<Catagory> {
  bool changepostion = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: changepostion == false ? 50 : 400,
        width: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 350,
              child: Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  AnimatedPositioned(
                      width: 150,
                      height: 50,
                      curve: Curves.ease,
                      left: changepostion == false ? 0 : 65,
                      duration: const Duration(milliseconds: 500),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              changepostion = !changepostion;
                            });
                          },
                          child: Container(
                              height: 20,
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Jewellery ",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black, fontSize: 22),
                                  ),
                                  if (changepostion == false)
                                    const Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.black,
                                    )
                                  else
                                    const Icon(
                                      Icons.close,
                                      color: Colors.black,
                                    )
                                ],
                              )))),
                ],
              ),
            ),
            if (changepostion == true)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 0,
                          blurRadius: 15,
                          offset: Offset(4, 4),
                        )
                      ]),
                  child: Center(
                    child: ListView.builder(
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                            ),
                            title: Text(
                              "Jewellery",
                              style: GoogleFonts.montserrat(
                                fontSize: 17,
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ),
          ],
        ));
  }
}
