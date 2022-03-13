import 'package:flutter/material.dart';
import 'package:flutter_application_1/categories.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';
import 'package:flutter_application_1/components/label.dart';

class HomaPage extends StatefulWidget {
  const HomaPage({Key? key}) : super(key: key);

  @override
  State<HomaPage> createState() => _HomaPageState();
}

class _HomaPageState extends State<HomaPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  //Baslik
                  buildBaslik(),

                  //Banner
                  buildBanner(),

                  // Butonlar
                  Padding(
                    padding: EdgeInsets.only(top: 48),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //ilk eleman
                        buildNavigation(
                            text: "Categoriess",
                            icon: Icons.menu,
                            widget: CategoriesPage(),
                            context: context),
                        //ikinci eleman
                        buildNavigation(text: "Favorities", icon: Icons.star),
                        //ucuncu eleman
                        buildNavigation(
                            text: "Gifts", icon: Icons.card_giftcard),
                        //dorduncu eleman
                        buildNavigation(
                            text: "Best selling", icon: Icons.people),
                      ],
                    ),
                  ),

                  //sales title
                  SizedBox(height: 40),
                  Text(
                    "Sales",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xFF000000)),
                  ),
                  SizedBox(
                    height: 16,
                  ),

                  //sales items
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItem(
                          text: "Smartphones",
                          photoUrl: "assets/image/telefon.jpg",
                          discount: "-50%",
                          screenWidth: screenWidth),
                      buildSalesItem(
                          text: "Smartphones",
                          photoUrl: "assets/image/telefon.jpg",
                          discount: "-50%",
                          screenWidth: screenWidth),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItem(
                          text: "Smartphones",
                          photoUrl: "assets/image/telefon.jpg",
                          discount: "-50%",
                          screenWidth: screenWidth),
                      buildSalesItem(
                          text: "Smartphones",
                          photoUrl: "assets/image/telefon.jpg",
                          discount: "-50%",
                          screenWidth: screenWidth),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItem(
                          text: "Smartphones",
                          photoUrl: "assets/image/telefon.jpg",
                          discount: "-50%",
                          screenWidth: screenWidth),
                      buildSalesItem(
                          text: "Smartphones",
                          photoUrl: "assets/image/telefon.jpg",
                          discount: "-50%",
                          screenWidth: screenWidth),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSalesItem(
                          text: "Smartphones",
                          photoUrl: "assets/image/telefon.jpg",
                          discount: "-50%",
                          screenWidth: screenWidth),
                      buildSalesItem(
                          text: "Smartphones",
                          photoUrl: "assets/image/telefon.jpg",
                          discount: "-50%",
                          screenWidth: screenWidth),
                    ],
                  ),
                ],
              ),
            ),

            //BOTTTOM NAVIGATION BAR
            bottomNavigationBar("home"),
          ],
        ),
      ),
    );
  }
}

Widget buildNavigation({
  required String text,
  required IconData icon,
  Widget? widget,
  BuildContext? context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context!, MaterialPageRoute(builder: (context) {
        return widget!;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xFFE0ECF8)),
          child: Icon(
            icon,
            color: Color(0xFF0001FC),
            size: 18,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: TextStyle(
              color: Color(0xFF1F53E4),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}

Widget buildBanner() {
  return Padding(
    padding: EdgeInsets.only(top: 24.0),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
      decoration: BoxDecoration(
          color: Color(0xFF0001FC), borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bose Home Speaker',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'USD 279',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Image.asset('assets/image/brocoli.png')
        ],
      ),
    ),
  );
}

Widget buildBaslik() {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Text(
      'Home',
      style: TextStyle(
          fontSize: 32, color: Color(0xFF0A1034), fontWeight: FontWeight.bold),
    ),
  );
}

Container buildSalesItem({
  required String text,
  required String photoUrl,
  required String discount,
  required double screenWidth,
}) {
  return Container(
    width: (screenWidth - 60) * 0.5,
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 50%
        label(discount),

        //telefon resmi
        SizedBox(height: 22),
        Center(child: Image.asset(photoUrl)),
        SizedBox(height: 22),
        //ismi
        Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 18, color: Color(0xFF0A1034)),
          ),
        )
      ],
    ),
  );
}
