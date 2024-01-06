import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_holiday/pages/home/home_page.dart';

class CheckRetsPage extends StatefulWidget {
  const CheckRetsPage({super.key});

  @override
  State<CheckRetsPage> createState() => _CheckRetsPageState();
}

class _CheckRetsPageState extends State<CheckRetsPage> {
  bool isTrue = false;
  String valuee = '0';
  var items = [
    '0',
    '2',
    '4',
    '6',
    '8',
    '10',
    '12',
    '14',
    '16',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notification",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 36,
            ),
            Row(
              children: [
                Column(
                  children: [
                    SvgPicture.asset("asset/icons/record_cicle.svg"),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "asset/images/liner.png",
                      height: 38,
                      width: 1.5,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SvgPicture.asset("asset/icons/locations.svg"),
                  ],
                ),
                const SizedBox(
                  width: 14,
                ),
                Column(
                  children: [
                    Container(
                      height: 52,
                      width: 278,
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
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA7A9B7),
                          ),
                          hintText: "   Pick up Location",
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset("asset/icons/gps.svg"),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 52,
                      width: 278,
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
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA7A9B7),
                          ),
                          hintText: "   Package Destination",
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset("asset/icons/gps.svg"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Dimension",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Color(0xFF191D31),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 52,
              width: double.maxFinite,
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
                onTap: () {
                  isTrue = true;
                  setState(() {});
                },
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA7A9B7),
                  ),
                  hintText: "0",
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  suffixIcon: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Kg",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF191D31),
                      ),
                    ),
                  ),
                  prefixIcon: isTrue == true
                      ? Padding(
                          padding: const EdgeInsets.all(12),
                          child: Image.asset("asset/images/Dimension.png"),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(12),
                          child: SvgPicture.asset("asset/icons/box.svg"),
                        ),
                ),
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            ElevatedButton(
              onPressed: () async {
                showModalBottomSheet(
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  context: context,
                  builder: (context) {
                    return Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              "asset/images/Bar.png",
                              height: 6,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 36,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1254 Kanata,\nOttawa",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF191D31),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Picked Up",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFFA7A9B7),
                                      ),
                                    ),
                                  ],
                                ),
                                SvgPicture.asset("asset/icons/arrow_2.svg"),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "2541  Orleans,\nToronto",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF191D31),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Destionation",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFFA7A9B7),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 1.5,
                              color: const Color(0xFFF3F3F3),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => HomePage(),
                                    ),
                                    (route) => false);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                height: 82,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: const Border.fromBorderSide(
                                    BorderSide(
                                      color: Color(0xFFF3F3F3),
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(12),
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xFFF2F4F9),
                                      ),
                                      child: Image.asset(
                                          "asset/images/product_picture.png"),
                                    ),
                                    const SizedBox(
                                      width: 14,
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Regular",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF191D31),
                                          ),
                                        ),
                                        Text(
                                          "2 - 3 Days",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFFA7A9B7),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Text(
                                      r"$15",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF191D31),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 82,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: const Border.fromBorderSide(
                                  BorderSide(
                                    color: Color(0xFFF3F3F3),
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFFF2F4F9),
                                    ),
                                    child:
                                        Image.asset("asset/images/truck.png"),
                                  ),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Cargo",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF191D31),
                                        ),
                                      ),
                                      Text(
                                        "3 - 6 Days",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFA7A9B7),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Text(
                                    r"$31",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF191D31),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 82,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: const Border.fromBorderSide(
                                  BorderSide(
                                    color: Color(0xFFF3F3F3),
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xFFF2F4F9),
                                    ),
                                    child:
                                        Image.asset("asset/images/Express.png"),
                                  ),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Express",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF191D31),
                                        ),
                                      ),
                                      Text(
                                        "1 - 2 Days",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFA7A9B7),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Text(
                                    r"$42",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF191D31),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
                "Check",
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
    );
  }
}
