import 'package:coffe_shop_ui/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg_signup.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 60.5),
              decoration:
                  BoxDecoration(color: Color(0x201B18).withOpacity(0.6)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Menengahkan Column secara vertikal
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 51.61,
                      height: 51.61,
                    ),
                    const SizedBox(height: 16), // Jarak antara gambar dan teks
                    const Text(
                      'Coffee Taste!',
                      style: TextStyle(
                        fontFamily: 'gilex',
                        fontSize: 14,
                        color: Colors.white,
                        letterSpacing: 4,
                      ),
                    ),
                    const SizedBox(
                      height: 53.39,
                    ),
                    const Text(
                      'Find your favorite',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'gilmed',
                          fontSize: 32,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'Coffe Taste!',
                      style: TextStyle(
                          fontFamily: 'gilex',
                          fontSize: 40,
                          color: Colors.white,
                          letterSpacing: 1),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Text(
                      "We're coffee shop, beer and wine bar, & event space for performing arts!",
                      style: TextStyle(
                        fontFamily: 'gilreg',
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.7),
                        letterSpacing: 0.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 41,
                    ),
                    Container(
                        decoration: const BoxDecoration(
                            color: Color(0xFF55433C),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        padding: const EdgeInsets.all(17.5),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, RouteApp.signInScreen);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  'Get Started',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'gilsem'),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ))
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
