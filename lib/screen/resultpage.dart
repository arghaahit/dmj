import 'dart:developer';

import 'package:diwamjewells/color/app_componet_color.dart';
import 'package:diwamjewells/screen/filters/shopping_filters.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  final _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.appBarCollor,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          title: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Best Ring for Girl",
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      textBaseline: TextBaseline.ideographic),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ).pOnly(top: 5),
              ],
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              key: _key,
              automaticallyImplyLeading: false,
              backgroundColor: AppColor.appBarCollor,
              expandedHeight: 50,
              floating: true,
              pinned: true,
              centerTitle: true,
              title: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColor.appBarCollor,
                  ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => byshort(),
                        child: Container(
                          height: 28,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(300),
                          ),
                          child: Center(
                            child: Text(
                              "Short by",
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade600,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ).pOnly(right: 15),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ShoppingFilters()));
                        },
                        child: Container(
                          height: 28,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(300),
                          ),
                          child: Center(
                            child: Text(
                              "Filters",
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade600,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ).pOnly(right: 15),
                      ),
                      Container(
                        height: 28,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(300),
                        ),
                        child: Center(
                          child: Text(
                            "Price",
                            style: GoogleFonts.montserrat(
                                color: Colors.grey.shade600,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ).pOnly(right: 15),
                      Container(
                        height: 28,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(300),
                        ),
                        child: Center(
                          child: Text(
                            "Color",
                            style: GoogleFonts.montserrat(
                                color: Colors.grey.shade600,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ).pOnly(right: 15),
                    ],
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
                child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: StaggeredGridView.countBuilder(
                shrinkWrap: true,
                crossAxisCount: 2,
                itemCount: 7,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const View();
                },
                staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
              ),
            ))
          ],
        ));
  }

  byshort() {
    showModalBottomSheet(
        context: context,
        builder: (context) => SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Price Low - Highe",
                        style: GoogleFonts.montserrat(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Price Highe - Low",
                        style: GoogleFonts.montserrat(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "By Popularity",
                        style: GoogleFonts.montserrat(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )),
                ],
              ).p(10),
            ));
  }

  Widget section1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 25,
          width: 75,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.star_border,
                color: Colors.blue,
                size: 15,
              ).pOnly(left: 5),
              Expanded(
                child: Text(
                  "Top Rated",
                  style: GoogleFonts.montserrat(
                    fontSize: 8,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ).pOnly(left: 8),
              )
            ],
          ),
        ).pOnly(right: 10),
        Container(
          height: 25,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.now_widgets_rounded,
                color: Colors.blue,
                size: 15,
              ).pOnly(left: 5),
              Expanded(
                child: Text(
                  "Premium Brands",
                  style: GoogleFonts.montserrat(
                    fontSize: 8,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ).pOnly(left: 8, right: 5),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class View extends StatefulWidget {
  const View({super.key});

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  var rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: 80,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Center(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 18, right: 18, top: 18),
                      child: Container(
                        height: 180,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: FavoriteButton(
                      isFavorite: false,
                      // iconDisabledColor: Colors.white,
                      iconDisabledColor: Colors.grey.shade300,
                      iconSize: 35,
                      valueChanged: (isFavorite) {
                        log('Is Favorite : $isFavorite');
                      },
                    ).p(10),
                  ),
                ],
              )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 14, right: 2),
                child: Text(
                  "Karishma Kreations Adjustable Couple Rings Combo Lovers",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 12, top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '₹1000',
                      style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("204",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    SizedBox(
                      width: 8,
                    ),
                    Text("79% off",
                        style: TextStyle(fontSize: 14, color: Colors.blue)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                child: SmoothStarRating(
                  color: Colors.orange,
                  rating: 4,
                  size: 18,
                  filledIconData: Icons.star,
                  halfFilledIconData: Icons.star_half,
                  defaultIconData: Icons.star_border,
                  starCount: 5,
                  allowHalfRating: true,
                  spacing: 2.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 14, top: 5),
                    child: Text(
                      "Free Delivery",
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6),
                    child: Icon(
                      Icons.local_shipping_outlined,
                      color: Color.fromARGB(255, 138, 138, 138),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
