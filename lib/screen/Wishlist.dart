import 'dart:developer';

import 'package:diwamjewells/color/app_componet_color.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:velocity_x/velocity_x.dart';

class wishlist extends StatefulWidget {
  const wishlist({super.key});

  @override
  State<wishlist> createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.appBarCollor,
        title: Text(
          "Wishlist",
          style:
              GoogleFonts.montserrat(fontSize: 17, fontWeight: FontWeight.w500),
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(255, 216, 216, 216),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const MyWish();
                  },
                  staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                ),
              ),
            ]),
      ),
    );
  }
}

class MyWish extends StatefulWidget {
  const MyWish({super.key});

  @override
  State<MyWish> createState() => _MyWishState();
}

class _MyWishState extends State<MyWish> {
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
                padding: EdgeInsets.only(left: 12, right: 12),
                child: Text(
                  "Karishma Kreations Adjustable Couple Rings Combo Lovers",
                  style: TextStyle(color: Colors.grey),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 12, top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '₹1000',
                      style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("204",
                        style: TextStyle(
                          fontSize: 12,
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    Text("79% off",
                        style: TextStyle(fontSize: 12, color: Colors.blue)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                child: SmoothStarRating(
                  color: Colors.orange,
                  rating: 4,
                  size: 15,
                  filledIconData: Icons.star,
                  halfFilledIconData: Icons.star_half,
                  defaultIconData: Icons.star_border,
                  starCount: 5,
                  allowHalfRating: true,
                  spacing: 2.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 4),
                child: Container(
                  height: 32,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(
                          color: const Color.fromARGB(255, 187, 187, 187),
                          width: 2)),
                  child: const Center(
                      child: Text(
                    "Add to Cart",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
