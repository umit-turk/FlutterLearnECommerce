import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Baslik
                  buildBaslik(),

                  //Banner
                  buildBanner(),

                  //Butonlar

                  //sales
                ],
              ),
            ),
          ),
        ));
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
            fontSize: 32,
            color: Color(0xFF0A1034),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
