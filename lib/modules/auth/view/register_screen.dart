import 'package:coffe_shop_ui/routes/routes.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              // Warna putih dengan opasitas 20%
              image: DecorationImage(
                image: AssetImage('assets/images/bg_signup.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(color: Color(0x201B18).withOpacity(0.6)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    SizedBox(
                      height: 73.39,
                    ),

                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontFamily: 'gilbold',
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Let’s create you an account.",
                      style: TextStyle(
                          fontFamily: 'gilreg',
                          fontSize: 14,
                          color: Color(0xfffffffff).withOpacity(70 / 100)),
                    ),
                    SizedBox(
                      height: 105,
                    ),
                    form(isObscure: _isObscure)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class form extends StatelessWidget {
  const form({
    super.key,
    required bool isObscure,
  }) : _isObscure = isObscure;

  final bool _isObscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.5),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                  fontFamily: 'gilmed',
                  fontSize: 18,
                  color: Colors.white,
                  letterSpacing: 4),
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: Colors.white)),
                prefixIcon: Icon(
                  Icons.smartphone,
                  color: Colors.white,
                ),
                label: Text(
                  'PHONE NUMBER',
                  style: TextStyle(
                      fontFamily: 'gilsem',
                      fontSize: 12,
                      letterSpacing: 4,
                      color: Colors.white),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              style: TextStyle(
                  fontFamily: 'gilmed',
                  fontSize: 18,
                  color: Colors.white,
                  letterSpacing: 4),
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: Colors.white)),
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.white,
                ),
                suffix: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                ),
                label: Text(
                  'PASSWORD',
                  style: TextStyle(
                      fontFamily: 'gilsem',
                      fontSize: 12,
                      letterSpacing: 4,
                      color: Colors.white),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              style: TextStyle(
                  fontFamily: 'gilmed',
                  fontSize: 18,
                  color: Colors.white,
                  letterSpacing: 4),
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(color: Colors.white)),
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.white,
                ),
                suffix: Icon(
                  _isObscure ? Icons.visibility : Icons.visibility_off,
                  color: Colors.white,
                ),
                label: Text(
                  'RE-PASSWORD',
                  style: TextStyle(
                      fontFamily: 'gilsem',
                      fontSize: 12,
                      letterSpacing: 4,
                      color: Colors.white),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Forgot password?',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    decorationColor: Color(0xffA97C37),
                    fontFamily: 'gilmed',
                    fontSize: 16,
                    letterSpacing: 4 / 100,
                    color: Color(0xffA97C37)),
              ),
            ),
            SizedBox(
              height: 50.5,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF55433C),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              padding: const EdgeInsets.all(17.5),
              child: GestureDetector(
                  onTap: () {
                    // Navigator.pushNamed(context, RouteApp);
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RouteApp.signInScreen);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Sign Up',
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
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 22, bottom: 43),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(
                            fontFamily: 'gilmed',
                            fontSize: 15,
                            color: Colors.white,
                            letterSpacing: 2 / 100)),
                    WidgetSpan(
                        child: SizedBox(
                      width: 8,
                    )),
                    WidgetSpan(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteApp.signInScreen);
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontFamily: 'gilmed',
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            color: Color(0xffA97C37),
                            letterSpacing: 4 / 100),
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
