import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homework_holiday/pages/auth/widgets/w_sign_in.dart';
import 'package:homework_holiday/pages/auth/widgets/w_sign_up.dart';

class AuthPage extends StatefulWidget {
  final bool signIn;
  const AuthPage({super.key, required this.signIn});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool signin = false;
  bool signup = true;
  @override
  void initState() {
    if (widget.signIn) {
      signin = true;
      signup = false;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        elevation: 0,
        leadingWidth: 84,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(16),
            height: 46,
            width: 46,
            decoration: BoxDecoration(
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shipping and Track Anytime ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Get great experience with tracky",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA7A9B7),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.symmetric(horizontal: 1),
                  width: double.maxFinite,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFFF8F9FB),
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (signup == false) {
                            signup = !signup;
                          }
                          if (signin == true) {
                            signin = !signin;
                          }
                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          alignment: Alignment.center,
                          width: 160,
                          decoration: BoxDecoration(
                            color: signup ? Colors.white : Colors.transparent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF191D31)),
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          if (signin == false) {
                            signin = !signin;
                          }
                          if (signup == true) {
                            signup = !signup;
                          }
                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          alignment: Alignment.center,
                          width: 160,
                          decoration: BoxDecoration(
                            color: signin ? Colors.white : Colors.transparent,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF191D31),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: signup ? SignUpPage() : WSignInPage(),
      ),
    );
  }
}
