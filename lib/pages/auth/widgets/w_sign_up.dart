import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:homework_holiday/pages/auth/verification.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Box authBox = Hive.box("authBox");
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Form(
          key: _globalKey,
          autovalidateMode: AutovalidateMode.always,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Full Name",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF191D31),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onEditingComplete: () {
                    setState(() {});
                  },
                  controller: name,
                  decoration: InputDecoration(
                    prefixIcon: name.text.isNotEmpty
                        ? Container(
                            padding: const EdgeInsets.all(12),
                            child: Image.asset(
                              "asset/images/profile.png",
                              height: 24,
                              width: 24,
                            ),
                          )
                        : Container(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset("asset/icons/person.svg"),
                          ),
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA7A9B7),
                    ),
                    hintText: "Enter your name",
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color(0xFFF3F3F3),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  // ignore: body_might_complete_normally_nullable
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter name";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Phone Number",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF191D31),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onEditingComplete: () {
                    setState(() {});
                  },
                  controller: phoneNumber,
                  decoration: InputDecoration(
                    prefixIcon: phoneNumber.text.isNotEmpty
                        ? Container(
                            padding: const EdgeInsets.all(12),
                            child: Image.asset(
                              "asset/images/call.png",
                              height: 24,
                              width: 24,
                            ),
                          )
                        : Container(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset("asset/icons/phone.svg"),
                          ),
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA7A9B7),
                    ),
                    hintText: "Enter your number",
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color(0xFFF3F3F3),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  // ignore: body_might_complete_normally_nullable
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter number";
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF191D31),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onEditingComplete: () {
                    setState(() {});
                  },
                  controller: password,
                  decoration: InputDecoration(
                    prefixIcon: password.text.isNotEmpty
                        ? Container(
                            padding: const EdgeInsets.all(12),
                            child: Image.asset(
                              "asset/images/lock.png",
                              height: 24,
                              width: 24,
                            ),
                          )
                        : Container(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset("asset/icons/lock.svg"),
                          ),
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA7A9B7),
                    ),
                    hintText: "Enter your password",
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color(0xFFF3F3F3),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  // ignore: body_might_complete_normally_nullable
                  validator: (value) {
                    if (value!.isEmpty && password.text.length < 8) {
                      return "Wrong password";
                    }
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (name.text == authBox.get("name") ||
                        phoneNumber.text == authBox.get("number") ||
                        password.text == authBox.get("password")) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              "a user with that name exists in the database"),
                        ),
                      );
                    } else {
                      var result = _globalKey.currentState!.validate();
                      if (result) {
                        await authBox.put("name", name.text);
                        await authBox.put("number", phoneNumber.text);
                        await authBox.put("password", password.text);
                        await authBox.put("isRegister", true);

                        // ignore: use_build_context_synchronously
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const VerificationsPage(),
                          ),
                        );
                      }
                    }
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
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 1,
                  color: const Color(0xFFF3F3F3),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Or Sign Up With",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA7A9B7),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(167, 169, 183, 0.15),
                          blurRadius: 10),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("asset/icons/google_logo.svg"),
                      const Text(
                        "   Sign Up with Google",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF191D31),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
