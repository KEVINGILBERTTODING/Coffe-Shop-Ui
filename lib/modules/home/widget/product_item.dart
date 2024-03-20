import 'package:flutter/material.dart';

class ProductItem {
  Widget mainProduct(String productName, String price, String imageProduct) {
    return Card(
      color: Color(0xff272220),
      child: Container(
          padding: EdgeInsets.all(10),
          width: 120,
          // height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffA97C37)),
                child: Image.asset(
                  'assets/images/$imageProduct',
                  width: 80,
                  height: 80,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                productName,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'gilbold',
                    fontSize: 16,
                    letterSpacing: 2 / 100),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                price,
                style: TextStyle(
                    color: Color(0xffA97C37),
                    fontFamily: 'gilbold',
                    fontSize: 12,
                    letterSpacing: 2 / 100),
              ),
            ],
          )),
    );
  }

  Widget frozenBeverages(String productName, String price, String image) {
    return Card(
      color: Color(0xff272220),
      child: Container(
        padding: EdgeInsets.all(10),
        // width: 120,
        // height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff37302D)),
              child: Image.asset(
                'assets/images/$image',
                width: 80,
                height: 80,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'gilbold',
                      fontSize: 16,
                      letterSpacing: 2 / 100),
                ),
                Text(
                  price,
                  style: TextStyle(
                      color: Color(0xffA97C37),
                      fontFamily: 'gilbold',
                      fontSize: 12,
                      letterSpacing: 2 / 100),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
