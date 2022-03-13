import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';
import 'package:flutter_application_1/productDetail.dart';

import 'header.dart';

class CategoryPage extends StatelessWidget {
  String categoryTitle;

  CategoryPage(this.categoryTitle);

  List<Map> products = [
    {
      "isim": "Surface laptop 3",
      "fotograf": "assets/image/telefon.jpg",
      "fiyat": "999"
    },
    {
      "isim": "iphone 11 pro",
      "fotograf": "assets/image/telefon.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Surface laptop 5",
      "fotograf": "assets/image/telefon.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Surface laptop 6",
      "fotograf": "assets/image/telefon.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Surface laptop 7",
      "fotograf": "assets/image/telefon.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Surface laptop 8",
      "fotograf": "assets/image/telefon.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Surface laptop 9",
      "fotograf": "assets/image/telefon.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Surface laptop 10",
      "fotograf": "assets/image/telefon.jpg",
      "fiyat": "999"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header
              header(categoryTitle, context),
              SizedBox(
                height: 32,
              ),
              //içerikler

              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: products.map((Map product) {
                    return buildContent(product['isim'], product['fotograf'],
                        product['fiyat'], context);
                  }).toList(),
                ),
              )
            ],
          )),

      //bottomNavigation
      bottomNavigationBar("search"),
    ])));
  }

  Widget buildContent(String title, String photoUrl, String price, context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProductDetailPage(title);
        }));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 24,
                  offset: Offset(0, 16))
            ]),
        child: Column(
          children: [
            SizedBox(height: 16),
            Image.asset(photoUrl),
            SizedBox(
              height: 19,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Color(0xFF0A1034),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'USD $price',
                  style: TextStyle(
                      color: Color(0xFF0001FC),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
