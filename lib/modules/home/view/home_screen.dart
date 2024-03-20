import 'package:coffe_shop_ui/modules/home/widget/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Color(0xff37302D)),
        padding: EdgeInsets.symmetric(horizontal: 32.5, vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.home_filled,
              size: 24,
              color: Colors.white,
            ),
            Icon(
              Icons.search,
              size: 24,
              color: Color(0xfffffffff).withOpacity(70 / 100),
            ),
            Icon(
              Icons.shopping_bag_outlined,
              size: 24,
              color: Color(0xfffffffff).withOpacity(70 / 100),
            ),
            Icon(
              Icons.person_2_outlined,
              size: 24,
              color: Color(0xfffffffff).withOpacity(70 / 100),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Container(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg_home.png'),
                      fit: BoxFit.cover)),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(color: Color(0x201B18).withOpacity(0.7)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Column(
                          children: [
                            categoriesMenu(),
                            SizedBox(
                              height: 30,
                            ),
                            mainProduct(),
                            SizedBox(
                              height: 20,
                            ),
                            beverages(),
                            beveragesSecond()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class beverages extends StatelessWidget {
  const beverages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kava and Bottled Beverages',
              style: TextStyle(
                fontFamily: 'gilsem',
                fontSize: 14,
                color: Color(0xffffffff).withOpacity(70 / 100),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductItem()
                      .frozenBeverages('Coffee', 'Rp. 90.000', 'product1.png'),
                  SizedBox(
                    width: 14,
                  ),
                  ProductItem()
                      .frozenBeverages('Coffee', 'Rp. 34.000', 'product2.png'),
                  SizedBox(
                    width: 14,
                  ),
                  ProductItem()
                      .frozenBeverages('Coffee', 'Rp. 22.000', 'product1.png')
                ],
              ),
            ),
          ]),
    );
  }
}

class beveragesSecond extends StatelessWidget {
  const beveragesSecond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(left: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Frozen Beverages',
              style: TextStyle(
                fontFamily: 'gilsem',
                fontSize: 14,
                color: Color(0xffffffff).withOpacity(70 / 100),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductItem().frozenBeverages(
                      'Coffee 2', 'Rp. 20.000', 'product3.png'),
                  SizedBox(
                    width: 14,
                  ),
                  ProductItem()
                      .frozenBeverages('Coffee', 'Rp. 34.000', 'product2.png'),
                  SizedBox(
                    width: 14,
                  ),
                  ProductItem()
                      .frozenBeverages('Coffee', 'Rp. 22.000', 'product1.png')
                ],
              ),
            ),
          ]),
    );
  }
}

class mainProduct extends StatelessWidget {
  const mainProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 20,
            ),
            ProductItem()
                .mainProduct('Chai latte', 'Rp. 87. 000', 'product1.png'),
            SizedBox(
              width: 14,
            ),
            ProductItem()
                .mainProduct('Matcha latte', 'Rp. 57. 000', 'product2.png'),
            SizedBox(
              width: 14,
            ),
            ProductItem()
                .mainProduct('Milk Shake', 'Rp. 30. 000', 'product3.png'),
            SizedBox(
              width: 14,
            ),
            ProductItem()
                .mainProduct('Chai latte', 'Rp. 37. 000', 'product2.png'),
            SizedBox(
              width: 14,
            ),
            ProductItem()
                .mainProduct('Americano', 'Rp. 40. 000', 'product1.png'),
            SizedBox(
              width: 14,
            ),
            ProductItem().mainProduct('Milk', 'Rp. 87. 000', 'product2.png'),
          ],
        ),
      ),
    );
  }
}

class categoriesMenu extends StatelessWidget {
  const categoriesMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          appBar(),
          SizedBox(
            height: 20,
          ),
          greetings(),
          SizedBox(
            height: 20,
          ),
          searchar(),
          SizedBox(
            height: 20,
          ),
          categoryMenu(),
        ],
      ),
    );
  }
}

class categoryMenu extends StatelessWidget {
  const categoryMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding:
                EdgeInsets.only(right: 17.43, left: 17.43, top: 8, bottom: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff55433C), width: 2),
                borderRadius: BorderRadius.all(
                  Radius.circular(200),
                )),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/event_ic.png',
                  width: 16,
                  height: 16,
                ),
                SizedBox(
                  width: 5.13,
                ),
                Text(
                  'Coffee',
                  style: TextStyle(
                      fontFamily: 'gilsem', fontSize: 14, color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            width: 9,
          ),
          Container(
            padding:
                EdgeInsets.only(right: 17.43, left: 17.43, top: 8, bottom: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff55433C), width: 2),
                borderRadius: BorderRadius.all(
                  Radius.circular(200),
                )),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/wine_ic.png',
                  width: 16,
                  height: 16,
                ),
                SizedBox(
                  width: 5.13,
                ),
                Text(
                  'Beer',
                  style: TextStyle(
                    fontFamily: 'gilsem',
                    fontSize: 14,
                    color: Color(0xffffffff).withOpacity(50 / 100),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 9,
          ),
          Container(
            padding:
                EdgeInsets.only(right: 17.43, left: 17.43, top: 8, bottom: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff55433C), width: 2),
                borderRadius: BorderRadius.all(
                  Radius.circular(200),
                )),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/beer_ic.png',
                  width: 16,
                  height: 16,
                ),
                SizedBox(
                  width: 5.13,
                ),
                Text(
                  'Beer',
                  style: TextStyle(
                    fontFamily: 'gilsem',
                    fontSize: 14,
                    color: Color(0xffffffff).withOpacity(50 / 100),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 9,
          ),
          Container(
            padding:
                EdgeInsets.only(right: 17.43, left: 17.43, top: 8, bottom: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff55433C), width: 2),
                borderRadius: BorderRadius.all(
                  Radius.circular(200),
                )),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/beer_ic.png',
                  width: 16,
                  height: 16,
                ),
                SizedBox(
                  width: 5.13,
                ),
                Text(
                  'Wine Bar',
                  style: TextStyle(
                    fontFamily: 'gilsem',
                    fontSize: 14,
                    color: Color(0xffffffff).withOpacity(50 / 100),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 9,
          ),
          Container(
            padding:
                EdgeInsets.only(right: 17.43, left: 17.43, top: 8, bottom: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff55433C), width: 2),
                borderRadius: BorderRadius.all(
                  Radius.circular(200),
                )),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/beer_ic.png',
                  width: 16,
                  height: 16,
                ),
                SizedBox(
                  width: 5.13,
                ),
                Text(
                  'Beer',
                  style: TextStyle(
                    fontFamily: 'gilsem',
                    fontSize: 14,
                    color: Color(0xffffffff).withOpacity(50 / 100),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 9,
          ),
          Container(
            padding:
                EdgeInsets.only(right: 17.43, left: 17.43, top: 8, bottom: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff55433C), width: 2),
                borderRadius: BorderRadius.all(
                  Radius.circular(200),
                )),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/beer_ic.png',
                  width: 16,
                  height: 16,
                ),
                SizedBox(
                  width: 5.13,
                ),
                Text(
                  'Beer',
                  style: TextStyle(
                    fontFamily: 'gilsem',
                    fontSize: 14,
                    color: Color(0xffffffff).withOpacity(50 / 100),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class searchar extends StatelessWidget {
  const searchar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xff55433C),
            ),
            suffixIcon: Icon(
              Icons.sort,
              color: Color(0xff55433C),
            ),
            hintStyle: TextStyle(
                fontFamily: 'gilreg', fontSize: 16, color: Color(0xff55433C)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(19),
              borderSide: BorderSide(
                width: 2,
                style: BorderStyle.solid,
                color: Colors.black,
              ),
            ),
            hintText: 'Coffee shop, beer & wine...'),
      ),
    );
  }
}

class appBar extends StatelessWidget {
  const appBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/images/profile.png',
              width: 42,
              height: 42,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class greetings extends StatelessWidget {
  const greetings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.topLeft,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: 'Hi,',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'gilreg', fontSize: 30)),
            TextSpan(
              text: ' Rapunzel',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'gilbold',
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
