import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';

class CategoriesPage extends StatelessWidget {
  final List<String> categories = [
    "All",
    "Computers",
    "Accessories",
    "Smartphones",
    "Smart object",
    "Speakers",
    "Accessories",
    "Smartphones",
    "Smart object",
    "Speakers",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 29,
                ),
                //Geri ikonu
                Icon(
                  Icons.arrow_back,
                  color: Color(0xFF0A1034),
                  size: 27,
                ),

                //kategori baslik
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Categories",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xFF0A1034)),
                ),
                SizedBox(height: 16),

                //kategoriler
                Expanded(
                  child: ListView(
                    children: categories
                        .map((String title) => buildCategory(title))
                        .toList(),
                  ),
                )
              ],
            ),
          ),
          //bottomNavBar
          bottomNavigationBar()
        ],
      )),
    );
  }

  Widget buildCategory(String title) {
    return Container(
      padding: EdgeInsets.all(24.0),
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ]),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0A1034)),
      ),
    );
  }
}
