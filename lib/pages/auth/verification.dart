import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homework_holiday/pages/home/home_page.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationsPage extends StatefulWidget {
  const VerificationsPage({super.key});

  @override
  State<VerificationsPage> createState() => _VerificationsPageState();
}

class _VerificationsPageState extends State<VerificationsPage> {
  int timer = 40;
  late StreamSubscription _sub;
  final Stream _myStream = Stream.periodic(
    const Duration(seconds: 1),
    (int count) {
      return 39 - count;
    },
  ).take(40);
  @override
  void initState() {
    _sub = _myStream.listen((event) {
      setState(() {
        timer = event;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        elevation: 0,
        leadingWidth: 84,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            height: 46,
            width: 46,
            decoration: const BoxDecoration(
              border: Border.fromBorderSide(
                BorderSide(
                  color: Color(0xFFF3F3F3),
                  width: 1,
                ),
              ),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("asset/icons/pop.svg"),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(88),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Verification Code",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "We have sent the code verification to\nyour number +01 65841542265",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA7A9B7),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            PinCodeTextField(
              pinTheme: PinTheme(
                  fieldHeight: 60,
                  fieldWidth: 66,
                  selectedBorderWidth: 1,
                  borderWidth: 1,
                  inactiveBorderWidth: 1,
                  inactiveColor: const Color(0xFF1D272F),
                  activeColor: Colors.transparent,
                  selectedColor: const Color(0xFF1D272F),
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(12),
                  activeFillColor: const Color(0xFFF8F9FB),
                  inactiveFillColor: Colors.transparent,
                  selectedFillColor: Colors.transparent),
              enableActiveFill: true,
              appContext: context,
              length: 4,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("02:$timer"),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Color.fromRGBO(25, 29, 49, 0.30),
                  isScrollControlled: false,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  context: context,
                  builder: (context) {
                    return Container(
                      color: Colors.white,
                      height: double.maxFinite,
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          Image.asset(
                            "asset/images/Screenshot 2023-12-30 at 10.03.18.png",
                            height: 350,
                            width: 350,
                            fit: BoxFit.fitHeight,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                  (route) => false,
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                backgroundColor: const Color(0xFFFD683D),
                                fixedSize:
                                    const Size.fromWidth(double.maxFinite),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                              ),
                              child: const Text(
                                "Go to Homepage",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
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
                "Submit",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t receive the code?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA7A9B7),
                  ),
                ),
                Text(
                  " Resend",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF1D272F),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}
