import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:homework_holiday/pages/order/order_detailes.dart';

class SenderDetailPage extends StatefulWidget {
  const SenderDetailPage({super.key});

  @override
  State<SenderDetailPage> createState() => _SenderDetailPageState();
}

class _SenderDetailPageState extends State<SenderDetailPage> {
  Box authBox = Hive.box("authBox");
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController cities = TextEditingController();
  TextEditingController detailed = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Sender Details",
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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: _globalKey,
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
                                fit: BoxFit.cover,
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
                    "City / Province",
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
                    controller: cities,
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        padding: const EdgeInsets.all(12),
                        child: SvgPicture.asset("asset/icons/location3.svg"),
                      ),
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA7A9B7),
                      ),
                      hintText: "Enter your city, province",
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
                        return "please enter cities";
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Detail Location",
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
                    controller: detailed,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA7A9B7),
                      ),
                      hintText:
                          "Type detailed location to make it easier for us to pick up the package",
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
                        return "please enter your detail locations";
                      }
                    },
                  ),
                  SizedBox(
                    height: 56,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var result = _globalKey.currentState!.validate();
                      if (result) {
                        if (authBox.get("name") == name.text &&
                            authBox.get("number") == phoneNumber.text) {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => OrderDetailes(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("this user have not database"),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
