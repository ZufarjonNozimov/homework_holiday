import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:homework_holiday/pages/profile/profile_main_pages.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController name = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  bool isTrue = false;
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
            Navigator.pushAndRemoveUntil(
              context,
              CupertinoPageRoute(
                builder: (context) => ProfilePages(),
              ),
              (route) => false,
            );
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
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "asset/images/Screenshot 2024-01-02 at 15.42.04.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Full Name",
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
                      onEditingComplete: () {
                        setState(() {});
                      },
                      controller: name,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Image.asset(
                            "asset/images/profile.png",
                          ),
                        ),
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
                        "Phone Number",
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
                      controller: phoneNumber,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Image.asset(
                            "asset/images/call.png",
                          ),
                        ),
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
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      authBox.delete("name");
                      authBox.put("name", name.text);
                      authBox.delete("number");
                      authBox.put("number", phoneNumber.text);
                      isTrue = true;
                      setState(() {});
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
