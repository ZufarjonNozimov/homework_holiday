import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework_holiday/pages/auth/auth_page.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  // ignore: unused_field
  late final PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4C4C4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 456,
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0, 1),
                        child: Image.asset(
                          "asset/images/on_boarding1.1.png",
                          // height: 702,
                          // width: 424,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: const Alignment(1, 0),
                        child: Image.asset(
                          "asset/images/on_boarding1.2.png",
                          height: 710,
                          width: 423,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0, 1),
                        child: Image.asset(
                          "asset/images/on_boarding2.1.png",
                          height: 400,
                          width: 424,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: const Alignment(1, 0),
                        child: Image.asset(
                          "asset/images/on_boarding2.2.png",
                          height: 710,
                          width: 423,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(0, 1),
                        child: Image.asset(
                          "asset/images/on_boarding3.1.png",
                          height: 400,
                          width: 424,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: const Alignment(1, 0),
                        child: Image.asset(
                          "asset/images/on_boarding3.2.png",
                          height: 710,
                          width: 423,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            height: 350,
            width: double.maxFinite,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                currentIndex == 0
                    ? const Text(
                        "Cash on Delivery or E-payment",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      )
                    : const SizedBox(
                        height: 0,
                      ),
               
                currentIndex == 0
                    ? const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        child: Text(
                          "Our delivery will ensure your items are delivered right to the door steps",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA7A9B7),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : const SizedBox(
                        height: 0,
                      ),
                currentIndex == 1
                    ? const Text(
                        "Delivery Right to Your Door Step",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      )
                    : const SizedBox(
                        height: 0,
                      ),
                currentIndex == 1
                    ? const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        child: Text(
                          "Our delivery will ensure your items are delivered right to the door steps",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA7A9B7),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : const SizedBox(
                        height: 0,
                      ),
                currentIndex == 2
                    ? const Text(
                        "Welcome to Tracky",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      )
                    : const SizedBox(
                        height: 0,
                      ),
                currentIndex == 2
                    ? const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        child: Text(
                          "Tracky is the best solution to deliver and track goods from local and world shipping.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA7A9B7),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    : const SizedBox(
                        height: 0,
                      ),
                const Spacer(),
                Container(
                  width: 50,
                  height: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: currentIndex == 0
                              ? const Color(0xFF1D272F)
                              : const Color(0xFFEBECF3),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: currentIndex == 1
                              ? const Color(0xFF1D272F)
                              : const Color(0xFFEBECF3),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: currentIndex == 2
                              ? const Color(0xFF1D272F)
                              : const Color(0xFFEBECF3),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const AuthPage(
                            signIn: false,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: const Color(0xFFFD683D),
                      fixedSize: const Size.fromWidth(double.maxFinite),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const AuthPage(
                            signIn: true,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xFFA7A9B7),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fixedSize: const Size.fromWidth(double.maxFinite),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Text(
                      "Sign In as Guest",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
