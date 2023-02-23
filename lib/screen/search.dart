import 'package:diwamjewells/color/app_componet_color.dart';
import 'package:diwamjewells/screen/resultpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.appBarCollor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        title: CupertinoSearchTextField(
          controller: _controller,
          autofocus: true,
          backgroundColor: Colors.white,
          style: GoogleFonts.montserrat(
            color: Colors.black,
          ),
        ),
        actions: [
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _controller.clear();
                });
              },
              child: Text(
                "Cancle",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ).pOnly(right: 10),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return const SearchResultTab();
          }),
    );
  }
}

class SearchResultTab extends StatefulWidget {
  const SearchResultTab({super.key});

  @override
  State<SearchResultTab> createState() => _SearchResultTabState();
}

class _SearchResultTabState extends State<SearchResultTab> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context) => const SearchResult()));
      },
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
    
              children: [
                Text("Dimand Ring", style: GoogleFonts.montserrat(
                     fontSize: 15,
                     fontWeight: FontWeight.w600,
                      
                ),).p(5),
                Text("Fansic ring with fake dimand", style: GoogleFonts.montserrat(
                     fontSize: 12,
                     fontWeight: FontWeight.w400,
                      
                ),).p(5),
              ],
            ).pOnly(left: 15),
            Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.open_in_full, color: Colors.grey.shade500,))
              ],
            )
            )
          ],
        ).p(5),
      ).pOnly(left: 10, right: 10, top: 8),
    );
  }
}
