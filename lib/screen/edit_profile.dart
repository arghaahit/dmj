import 'package:diwamjewells/color/app_componet_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>
    with TickerProviderStateMixin {
  // for man
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1000),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0.0, 0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  ));

  // for woman
  late final AnimationController _controllerWomen = AnimationController(
    duration: const Duration(milliseconds: 1000),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimationWomen = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(-0.0, 0),
  ).animate(CurvedAnimation(
    parent: _controllerWomen,
    curve: Curves.linear,
  ));

  bool man = false;
  bool women = false;
  @override
  void initState() {
    super.initState();

    _controller.stop();
    _controllerWomen.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: AppColor.appBarCollor,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (women == false)
                    SlideTransition(
                      position: _offsetAnimation,
                      child: GestureDetector(
                        onTap: () {
                          _controller.forward();
                          setState(() {
                            Future.delayed(
                              const Duration(milliseconds: 200),
                            );
                            man = !man;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(500),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/svg/man(2).png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ).p(20),
                            Text(
                              "Male",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  if (man == false)
                    SlideTransition(
                      position: _offsetAnimationWomen,
                      child: GestureDetector(
                        onTap: () {
                          _controllerWomen.forward();
                          setState(() {
                            Future.delayed(const Duration(milliseconds: 200));
                            women = !women;
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500),
                                color: Colors.white,
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/svg/american.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ).p(20),
                            Text(
                              "Female",
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              label: Text(
                            "First Name",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )),
                        ),
                        10.heightBox,
                        TextFormField(
                          decoration: const InputDecoration(
                              label: Text(
                            "Last Name",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )),
                        ),
                         10.heightBox,
                        TextFormField(
                          decoration: const InputDecoration(
                              label: Text(
                            "Mobile Number",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )),
                        ),
                         10.heightBox,
                        TextFormField(
                          decoration: const InputDecoration(
                              label: Text(
                            "Email ID",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )),
                        ),
                        50.heightBox,
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: AppColor.appBarCollor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 12,
                                offset: Offset(4,4),
                              )
                            ]
                          ),
                          child: Center(
                            child: Text("Submit", style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,

                            ),),
                          ),
                        )
                      ],
                    ).p(10)),
              ))
        ],
      ),
    );
  }
}
