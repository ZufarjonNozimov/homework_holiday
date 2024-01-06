import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ChangedPasswordPage extends StatefulWidget {
  const ChangedPasswordPage({super.key});

  @override
  State<ChangedPasswordPage> createState() => _ChangedPasswordPageState();
}

class _ChangedPasswordPageState extends State<ChangedPasswordPage> {
  TextEditingController currentPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController coniformPassword = TextEditingController();
  bool isTrue = false;
  bool obSecure = true;
  Box authBox = Hive.box("authBox");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Color(0xFF191D31),
          ),
        ),
        toolbarHeight: 100,
        leadingWidth: 100,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(26),
            child: Container(
              padding: const EdgeInsets.all(12),
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
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Current Password",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF191D31),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: const Border.fromBorderSide(
                        BorderSide(
                          color: Color(0xFFF3F3F3),
                          width: 1,
                        ),
                      ),
                    ),
                    child: TextField(
                      obscureText: !obSecure,
                      onEditingComplete: () {
                        setState(() {});
                      },
                      controller: currentPassword,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Image.asset(
                            "asset/images/lock.png",
                          ),
                        ),
                        border: InputBorder.none,
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(10),
                          child: IconButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              obSecure = !obSecure;
                              setState(() {});
                            },
                            icon: obSecure
                                ? Icon(
                                    CupertinoIcons.eye_slash,
                                    color: Color(0xFFA7A9B7),
                                  )
                                : SvgPicture.asset("asset/icons/eye.svg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA7A9B7),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      Text(
                        "New Password",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF191D31),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: const Border.fromBorderSide(
                        BorderSide(
                          color: Color(0xFFF3F3F3),
                          width: 1,
                        ),
                      ),
                    ),
                    child: TextField(
                      onEditingComplete: () {
                        setState(() {});
                      },
                      controller: newPassword,
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA7A9B7),
                        ),
                        hintText: "Confirm your password",
                        prefixIcon: Padding(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset("asset/icons/lock.svg")),
                        border: InputBorder.none,
                        suffixIcon: isTrue
                            ? Padding(
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset("asset/icons/tick.svg"),
                              )
                            : null,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Confirm Password",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF191D31),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: const Border.fromBorderSide(
                        BorderSide(
                          color: Color(0xFFF3F3F3),
                          width: 1,
                        ),
                      ),
                    ),
                    child: TextField(
                      onEditingComplete: () {
                        setState(() {});
                      },
                      controller: coniformPassword,
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA7A9B7),
                        ),
                        hintText: "Repeat your new password",
                        prefixIcon: Padding(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset("asset/icons/lock.svg")),
                        border: InputBorder.none,
                        suffixIcon: isTrue
                            ? Padding(
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset("asset/icons/tick.svg"),
                              )
                            : null,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (currentPassword.text != authBox.get("password")) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("your current password is wrong"),
                          ),
                        );
                      }
                      if (newPassword.text != coniformPassword.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("your confirm password is wrong"),
                          ),
                        );
                      }
                      if (currentPassword.text == authBox.get("password") &&
                          newPassword.text == coniformPassword.text) {
                        authBox.delete("password");
                        authBox.put("password", coniformPassword.text);
                        isTrue = true;
                        setState(() {});
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
                      "Save Changes",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
