import 'package:diwamjewells/color/app_componet_color.dart';
import 'package:diwamjewells/screen/filters/filters/categary_page.dart';
import 'package:diwamjewells/screen/filters/filters/color_page.dart';
import 'package:diwamjewells/screen/filters/filters/gemstones_page.dart';
import 'package:diwamjewells/screen/filters/filters/material_page.dart';
import 'package:diwamjewells/screen/filters/filters/price_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class ShoppingFilters extends StatefulWidget {
  const ShoppingFilters({super.key});

  @override
  State<ShoppingFilters> createState() => _ShoppingFiltersState();
}

class _ShoppingFiltersState extends State<ShoppingFilters> {
  List<FilterModal> filterList = [
    FilterModal(0, "Price", true),
    FilterModal(2, "Material", false),
    FilterModal(3, "Color", false),
    FilterModal(4, "Gemstones", false),
    FilterModal(6, "Categary", false),
  ];
  int pageIndex = 0;
  int saveIndex = 0;
  List page = const [
    PriceFilter(),
    MyMaterial(),
    FilterbyColor(),
    MyGemstonePage(),
    CategaryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.appBarCollor,
        elevation: 0,
        title: Text(
          "Filters",
          style: GoogleFonts.montserrat(
            color: Colors.white,
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
                    color: Colors.grey.shade200,
                    child: ListView.builder(
                        itemCount: filterList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: filterList[index].isTrue == false
                                  ? Colors.transparent
                                  : Colors.white,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                            ),
                            child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    pageIndex = index;
                                    saveIndex = index;
                                    filterList[index].isTrue =
                                        filterList[index].isTrue == false
                                            ? true
                                            : false;

                                    for (int i = 0;
                                        i < filterList.length;
                                        i++) {
                                      if (i != saveIndex) {
                                        filterList[i].isTrue = false;
                                      }
                                    }
                                  });
                                },
                                child: Text(
                                  filterList[index].title.toString(),
                                  style: GoogleFonts.montserrat(
                                      color: filterList[index].isTrue == false
                                          ? Colors.black
                                          : Colors.blue,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1),
                                )),
                          ).pOnly(left: 10);
                        }))),
            Expanded(
              flex: 2,
              child: page[pageIndex],
            ),
          ],
        ),
      ),
    );
  }
}

class FilterModal {
  final int id;
  final String title;
  bool isTrue;

  FilterModal(this.id, this.title, this.isTrue);
}
