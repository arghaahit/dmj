import 'dart:developer';
import 'dart:ffi';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:diwamjewells/color/app_componet_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductPage extends StatefulWidget {
  final String tag;
  final String productImage;
  const ProductPage({super.key, required this.productImage, required this.tag});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int ammount = 200;
  int logicAmmount = 200;
  int _current = 0;
  List imageLsit = [
    'https://test.diwamjewels.com/assets/images/jewel_img/bangel1.jpg',
    'https://test.diwamjewels.com/assets/images/jewel_img/bangel1.jpg',
    'https://test.diwamjewels.com/assets/images/jewel_img/bangel1.jpg',
    'https://test.diwamjewels.com/assets/images/jewel_img/bangel1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.8,
        backgroundColor: AppColor.appBarCollor,
        title: Text(
          "Diwam Jewels",
          style: GoogleFonts.sacramento(
            color: Colors.yellow,
            fontSize: 35,
            fontWeight: FontWeight.w600,
            letterSpacing: 3,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  color: const Color.fromARGB(171, 247, 223, 223),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Hero(
                          tag: widget.tag,
                          child: CarouselSlider(
                            options: CarouselOptions(
                              height: 500,
                              aspectRatio: 3.0,
                              enlargeCenterPage: true,
                              scrollDirection: Axis.horizontal,
                              autoPlay: true,
                            ),
                            items: imageLsit
                                .map((item) => Center(
                                      child: Image.network(item.toString()),
                                    ))
                                .toList(),
                          )),
                    ),
                  )),
            ],
          ),
          MyScroller(
            logic: (int value) {
              setState(() {
                ammount = logicAmmount * value;
              });
            },
          ),
        ],
      ),
      bottomSheet: Container(
        height: 55,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 15,
              offset: Offset(-4, 0))
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Price: ",
                  style: GoogleFonts.montserrat(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  "\$ ${ammount}",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade600,
                    fontSize: 19,
                  ),
                ),
              ],
            ).pOnly(left: 20, top: 10, bottom: 10)),
            GestureDetector(
              onTap: () => showMyBottom(),
              child: Container(
                height: 55,
                width: 90,
                decoration: BoxDecoration(
                  color: AppColor.appBarCollor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Buy Now",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ).p(10),
            ),
          ],
        ),
      ),
    );
  }

  void showMyBottom() {
    showModalBottomSheet(
        context: context,
        builder: (contex) {
          return const BuyNow();
        });
  }
}

class ColorModal {
  final String title;
  final Color color;
  bool isTrue;

  ColorModal(this.title, this.color, this.isTrue);
}

class MyScroller extends StatefulWidget {
  final Function logic;
  const MyScroller({Key? key, required this.logic}) : super(key: key);

  @override
  State<MyScroller> createState() => _MyScrollerState();
}

class _MyScrollerState extends State<MyScroller> {
  var rating = 3.5;
  int _currentValue = 1;
  int _currentSizeValue = 4;
  int productAmmount = 200;
  String pragrha =
      "These earrings are delicately etched in solid gold and feature the ammonite fossil, whose spiral shape symbolises continual change and evolution.The Ammonite Sleepers are designed for everyday staple wear with their minimal and classic form.A contemporary reflection of the diverse forms taken by Australia’s ever-evolving land, Landscape references Australia’s natural architecture. Like the land itself, Landscape is simultaneously structured and fluid; bold and delicate. The gentle spiral line work has been etched into the front surface, the reverse, a softy polished beaten texture. The Ammonite evokes feelings of lost relics and jewellery unearthed.";
  bool favrite = false;

  List<ColorModal> colordata = [
    ColorModal("Black", Colors.black, false),
    ColorModal("Red", Colors.red, false),
    ColorModal("Blue", Colors.blue, false),
    ColorModal("Orange", Colors.orange, false),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
          ),
          SizedBox(
            child: VxArc(
              edge: VxEdge.TOP,
              height: 30,
              arcType: VxArcType.CONVEY,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: Offset(-4, -4),
                  )
                ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      35.heightBox,
                      Text(
                        "Follower Pot",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "These earrings are delicately etched",
                        style: GoogleFonts.montserrat(
                            color: Colors.grey.shade600,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "SKU:",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ).pOnly(left: 5, right: 10),
                                Text(
                                  "UE00004-YG0000",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            40.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "\$ 200",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 25),
                                ).pOnly(left: 10, right: 10),
                                Text(
                                  "(30% Off)",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20),
                                ).pOnly(left: 10, right: 10),
                              ],
                            ),
                            5.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "MRP ",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ).pOnly(left: 10, right: 1),
                                Text(
                                  "\$ 6,000 ",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 15),
                                ).pOnly(left: 1, right: 1),
                                Text(
                                  "include all taxes ",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ).pOnly(left: 1, right: 5),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Availability:",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ).pOnly(left: 5, right: 10),
                                Text(
                                  "In stock",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ).pOnly(left: 5, top: 5),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SmoothStarRating(
                                    color: Colors.orange,
                                    rating: rating,
                                    size: 28,
                                    filledIconData: Icons.star,
                                    halfFilledIconData: Icons.star_half,
                                    defaultIconData: Icons.star_border,
                                    starCount: 5,
                                    allowHalfRating: true,
                                    spacing: 2.0,
                                  ),
                                  Text(
                                    "50 Reviews",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.deepPurple,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ).pOnly(left: 10, top: 6)
                                ],
                              ),
                            ).pOnly(left: 9),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Color :",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ).pOnly(left: 10, top: 6, right: 10),
                                Container(
                                    height: 80,
                                    width:
                                        MediaQuery.of(context).size.width - 123,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: colordata.length,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              int myindex = 0;
                                              setState(() {
                                                myindex = index;
                                                colordata[index].isTrue =
                                                    colordata[index].isTrue ==
                                                            false
                                                        ? true
                                                        : false;
                                              });

                                              for (int i = 0;
                                                  i < colordata.length;
                                                  i++) {
                                                if (i != myindex) {
                                                  setState(() {
                                                    colordata[i].isTrue = false;
                                                  });
                                                }
                                              }
                                            },
                                            child: Container(
                                              color: Colors.transparent,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Center(
                                                    child: Container(
                                                      height: 50,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(500),
                                                        border: Border.all(
                                                            color: Colors.black,
                                                            width: colordata[index].isTrue == false? 2: 4),
                                                      ),
                                                      child: Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              colordata[index]
                                                                  .color,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      500),
                                                        ),
                                                      ).p(3),
                                                    ),
                                                  ),
                                                  Text(
                                                    colordata[index].title,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: Colors.black,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ).pOnly(
                                              left: 12,
                                            ),
                                          );
                                        })).pOnly(top: 5),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Quantity :",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ).pOnly(left: 10, top: 6, right: 10),
                                Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: NumberPicker(
                                      itemWidth: 50,
                                      zeroPad: false,
                                      axis: Axis.horizontal,
                                      value: _currentValue,
                                      minValue: 1,
                                      maxValue: 100,
                                      onChanged: (value) {
                                        setState(() {
                                          _currentValue = value;
                                          log(value.toString());
                                        });
                                        widget.logic(value);
                                      }),
                                ).pOnly(top: 5),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Size :",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ).pOnly(left: 10, top: 6, right: 55),
                                Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: NumberPicker(
                                    itemWidth: 50,
                                    zeroPad: false,
                                    axis: Axis.horizontal,
                                    value: _currentSizeValue,
                                    minValue: 4,
                                    maxValue: 7,
                                    onChanged: (value) => setState(
                                        () => _currentSizeValue = value),
                                  ),
                                ).pOnly(top: 5),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Add to Cart",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      const Icon(
                                        Icons.shopping_cart,
                                        color: Colors.white,
                                      ).pOnly(left: 10),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      favrite = !favrite;
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: AppColor.appBarCollor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        favrite == false
                                            ? Icons.favorite_border
                                            : Icons.favorite,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ).pOnly(left: 10),
                                )
                              ],
                            ).pOnly(
                              top: 30,
                              left: 10,
                              bottom: 10,
                            ),
                            ReadMoreText(
                              pragrha.toString(),
                              trimLines: 3,
                              colorClickableText: Colors.pink,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Read more',
                              trimExpandedText: 'Less more',
                              textAlign: TextAlign.justify,
                              lessStyle: GoogleFonts.montserrat(
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                                color: AppColor.appBarCollor,
                                fontWeight: FontWeight.w400,
                              ),
                              moreStyle: GoogleFonts.montserrat(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15,
                                  color: AppColor.appBarCollor,
                                  fontWeight: FontWeight.w400),
                            ).p(12),
                            Container(
                              height: 10,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ).pOnly(top: 10, bottom: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Product Details",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ],
                            ).pOnly(top: 10, left: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Product Type",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.grey.shade700,
                                        ),
                                      ).pOnly(top: 10),
                                      Text(
                                        "Product Code",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.grey.shade700,
                                        ),
                                      ).pOnly(top: 10),
                                      Text(
                                        "Gold Purity",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.grey.shade700,
                                        ),
                                      ).pOnly(top: 10),
                                      Text(
                                        "Brand Name",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.grey.shade700,
                                        ),
                                      ).pOnly(top: 10),
                                      Text(
                                        "Gender",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.grey.shade700,
                                        ),
                                      ).pOnly(top: 10),
                                      Text(
                                        "Metal Colour",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.grey.shade700,
                                        ),
                                      ).pOnly(top: 10),
                                      Text(
                                        "Gross Weight ( g )",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.grey.shade700,
                                        ),
                                      ).pOnly(top: 10),
                                      Text(
                                        "Stone Weight ( g )",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.grey.shade700,
                                        ),
                                      ).pOnly(top: 10),
                                      Text(
                                        "Gold Certification",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.grey.shade700,
                                        ),
                                      ).pOnly(top: 10),
                                      Text(
                                        "Hallmark Certificate No.",
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.montserrat(
                                          color: Colors.grey.shade700,
                                        ),
                                      ).pOnly(top: 10),
                                      Text(
                                        "Platinum Color",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.grey.shade700,
                                        ),
                                      ).pOnly(top: 10),
                                    ],
                                  ),
                                )),
                                Expanded(
                                    child: SizedBox(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bangles",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ).pOnly(top: 10),
                                      Text(
                                        "SKU:UE00004-YG0000",
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ).pOnly(top: 10),
                                      Text(
                                        "22 KT (916)",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ).pOnly(top: 10),
                                      Text(
                                        "Malabar",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ).pOnly(top: 10),
                                      Text(
                                        "Female",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ).pOnly(top: 10),
                                      Text(
                                        "Yellow",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ).pOnly(top: 10),
                                      Text(
                                        "10.2860",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ).pOnly(top: 10),
                                      Text(
                                        "100",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ).pOnly(top: 10),
                                      Text(
                                        "BIS Hallmark 916",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ).pOnly(top: 10),
                                      Text(
                                        "HM/C-7790174629",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ).pOnly(top: 10),
                                      Text(
                                        "NA",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ).pOnly(top: 10),
                                    ],
                                  ),
                                )),
                              ],
                            ).p(10),
                          ],
                        ),
                      ).p(10),
                      Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ).pOnly(top: 10, bottom: 10, left: 10, right: 10),
                      Text(
                        "You may like this",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ).pOnly(top: 10, bottom: 10),
                      SizedBox(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return const ProductsTab();
                            }),
                      ),
                      Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ).pOnly(top: 10, bottom: 10, left: 10, right: 10),
                      Text(
                        "Ratings & Reviews",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ).pOnly(top: 10, bottom: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            radius: 30.0,
                            arcType: ArcType.FULL_REVERSED,
                            animation: true,
                            lineWidth: 6.0,
                            percent: 0.8,
                            center: Text("5"),
                            backgroundColor: Colors.grey.shade500,
                            progressColor: AppColor.appBarCollor,
                            circularStrokeCap: CircularStrokeCap.round,
                            curve: Curves.easeInCubic,
                            footer: Text(
                              "10,052",
                              style: GoogleFonts.montserrat(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w400,
                              ),
                            ).p(5),
                          ).p(10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Most Reviews",
                                style: GoogleFonts.montserrat(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ).p(5),
                              SmoothStarRating(
                                color: Colors.orange,
                                rating: rating,
                                size: 28,
                                filledIconData: Icons.star,
                                halfFilledIconData: Icons.star_half,
                                defaultIconData: Icons.star_border,
                                starCount: 5,
                                allowHalfRating: true,
                                spacing: 2.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return const ReviewsTab();
                            }),
                      ),
                      Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ).pOnly(top: 20, bottom: 10, left: 10, right: 10),
                      Text(
                        "Questions and Answers",
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ).pOnly(top: 25, bottom: 10),
                      SizedBox(
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return const QnaTabs();
                            }),
                      ),
                      60.heightBox,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductsTab extends StatefulWidget {
  const ProductsTab({Key? key}) : super(key: key);

  @override
  State<ProductsTab> createState() => _ProductsTabState();
}

class _ProductsTabState extends State<ProductsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://test.diwamjewels.com/assets/images/jewel_img/earring5.jpg")),
            ),
          ),
          Text(
            "Cartier Necklace",
            style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ).pOnly(left: 10, top: 10),
          Text(
            "Luxury Jewellery",
            style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ).pOnly(
            left: 10,
          ),
          Text(
            "Rs. 5,000",
            style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ).pOnly(
            left: 10,
          )
        ],
      ),
    ).p(10);
  }
}

class ReviewsTab extends StatefulWidget {
  const ReviewsTab({Key? key}) : super(key: key);

  @override
  State<ReviewsTab> createState() => _ReviewsTabState();
}

class _ReviewsTabState extends State<ReviewsTab> {
  double rating = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade100,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Argha Das",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                height: 20,
                width: 1,
                color: Colors.black,
              ).pOnly(left: 15, right: 15),
              SmoothStarRating(
                color: Colors.orange,
                rating: rating,
                size: 20,
                filledIconData: Icons.star,
                halfFilledIconData: Icons.star_half,
                defaultIconData: Icons.star_border,
                starCount: 5,
                allowHalfRating: true,
                spacing: 2.0,
              ),
            ],
          ),
          Text(
            "hese earrings are delicately etched in solid gold and feature the ammonite fossil, whose spiral shape symbolises continual change and evolution.The Ammonite Sleepers are designed for everyday staple wear with their minimal and classic form.",
            textAlign: TextAlign.justify,
            style: GoogleFonts.montserrat(
              color: Colors.black,
            ),
          ).pOnly(top: 10),
        ],
      ).p(10),
    ).pOnly(left: 10, right: 10, top: 10);
  }
}

class QnaTabs extends StatefulWidget {
  const QnaTabs({Key? key}) : super(key: key);

  @override
  State<QnaTabs> createState() => _QnaTabsState();
}

class _QnaTabsState extends State<QnaTabs> {
  bool like = false;
  bool dontlike = false;

  @override
  Widget build(BuildContext context) {
    return Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey.shade400))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Q: does it come with a case or a box ?",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
                Text(
                  "A: Yes",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ).pOnly(top: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Argha das",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                              color: Colors.grey.shade500,
                            ),
                          ).pOnly(top: 6),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (dontlike == true) {
                                      dontlike = false;
                                    }
                                    like = !like;
                                  });
                                },
                                child: Icon(
                                  like == false
                                      ? Icons.thumb_up_alt_outlined
                                      : Icons.thumb_up_alt,
                                  color: like == false
                                      ? Colors.grey.shade400
                                      : AppColor.appBarCollor,
                                  size: 20,
                                ).pOnly(left: 10, right: 10),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (like == true) {
                                      like = false;
                                    }
                                    dontlike = !dontlike;
                                  });
                                },
                                child: Icon(
                                  dontlike == false
                                      ? Icons.thumb_down_alt_outlined
                                      : Icons.thumb_down_alt_rounded,
                                  color: dontlike == false
                                      ? Colors.grey.shade400
                                      : AppColor.appBarCollor,
                                  size: 20,
                                ).pOnly(left: 10, right: 10),
                              ),
                            ],
                          )),
                        ],
                      ),
                    ),
                  ],
                ).pOnly(top: 15),
              ],
            ).p(10))
        .pOnly(left: 10, right: 10);
  }
}

///Buy Now form ------------------------------------------------//

class BuyNow extends StatefulWidget {
  const BuyNow({super.key});

  @override
  State<BuyNow> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  int _currentSizeValue = 4;
  List<ColorModal> colordata = [
    ColorModal("Black", Colors.black, false),
    ColorModal("Red", Colors.red, false),
    ColorModal("Blue", Colors.blue, false),
    ColorModal("Orange", Colors.orange, false),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(
                  color: Colors.grey.shade500,
                ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.grey.shade600,
                    ).pOnly(left: 10)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dimand Ring",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Stainless Steel Ring",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    15.heightBox,
                    Text(
                      "\$ 200",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ).p(10),
              )
            ],
          ).p(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Size :",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ).pOnly(left: 10, top: 6, right: 55),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: NumberPicker(
                  itemWidth: 50,
                  zeroPad: false,
                  axis: Axis.horizontal,
                  value: _currentSizeValue,
                  minValue: 4,
                  maxValue: 8,
                  haptics: true,
                  onChanged: (value) =>
                      setState(() => _currentSizeValue = value),
                ),
              ).pOnly(top: 5),
            ],
          ).pOnly(left: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Color :",
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ).pOnly(left: 10, top: 6, right: 10),
              Container(
                  height: 80,
                  width:MediaQuery.of(context).size.width-90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: colordata.length,
                      itemBuilder: (context, index) {
                        return Container(
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: InkWell(
                                  onTap: (() {
                                    int myindex = 0;
                                    setState(() {
                                      myindex = index;
                                      colordata[index].isTrue =
                                          colordata[index].isTrue == false
                                              ? true
                                              : false;
                                    });

                                    for (int i = 0; i < colordata.length; i++) {
                                      if (i != myindex) {
                                        setState(() {
                                          colordata[i].isTrue = false;
                                        });
                                      }
                                    }
                                  }),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(500),
                                      border: Border.all(
                                          color: Colors.black,
                                          width:
                                              colordata[index].isTrue == false
                                                  ? 2
                                                  : 4),
                                    ),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: colordata[index].color,
                                        borderRadius:
                                            BorderRadius.circular(500),
                                      ),
                                    ).p(3),
                                  ),
                                ),
                              ),
                              Text(
                                colordata[index].title,
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ).pOnly(
                          left: 12,
                        );
                      })).pOnly(top: 5),
            ],
          ).pOnly(left: 10),
          Expanded(
            child: Center(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColor.appBarCollor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Buy Now",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ).pOnly(left: 10, right: 10, top: 15, bottom: 15),
            ),
          )
        ],
      ),
    );
  }
}
