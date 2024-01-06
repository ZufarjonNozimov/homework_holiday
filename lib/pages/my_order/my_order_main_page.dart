import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_holiday/pages/my_order/widgets/w_from_me.dart';
import 'package:homework_holiday/pages/my_order/widgets/w_to_me.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({super.key});

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  int index1 = 0;
  int index2 = 0;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          toolbarHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "asset/images/appBar.png",
              fit: BoxFit.cover,
            ),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "My Order",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    child: Image.asset(
                      "asset/images/mu_order_picture1.png",
                      height: 44,
                      width: 44,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(14),
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFFD683D),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset("asset/icons/search.svg"),
                      const SizedBox(
                        width: 14,
                      ),
                      const Text(
                        "Enter track number",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF1D272F),
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset("asset/icons/screen.svg"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.symmetric(horizontal: 24),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFFF8F9FB),
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        index1 = 0;
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        alignment: Alignment.center,
                        width: 160,
                        decoration: BoxDecoration(
                          color:
                              index1 == 0 ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "From Me",
                          style: TextStyle(
                            fontSize: 14,
                            color: index1 == 0
                                ? const Color(0xFF191D31)
                                : const Color(0xFFA7A9B7),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        index1 = 1;
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        alignment: Alignment.center,
                        width: 160,
                        decoration: BoxDecoration(
                          color:
                              index1 == 1 ? Colors.white : Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "To Me",
                          style: TextStyle(
                            fontSize: 14,
                            color: index1 == 1
                                ? const Color(0xFF191D31)
                                : const Color(0xFFA7A9B7),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        index2 = 0;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.fromBorderSide(index2 == 0
                              ? BorderSide.none
                              : const BorderSide(color: Color(0xFFF3F3F3), width: 1)),
                          borderRadius: BorderRadius.circular(30),
                          color: index2 == 0 ? const Color(0xFF1D272F) : Colors.white,
                        ),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                        child: Text(
                          "All",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color:
                                index2 == 0 ? Colors.white : const Color(0xFFA7A9B7),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        index2 = 1;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.fromBorderSide(index2 == 1
                              ? BorderSide.none
                              : const BorderSide(color: Color(0xFFF3F3F3), width: 1)),
                          borderRadius: BorderRadius.circular(30),
                          color: index2 == 1 ? const Color(0xFF1D272F) : Colors.white,
                        ),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                        child: Text(
                          "Pending",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color:
                                index2 == 1 ? Colors.white : const Color(0xFFA7A9B7),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        index2 = 2;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.fromBorderSide(index2 == 2
                              ? BorderSide.none
                              : const BorderSide(color: Color(0xFFF3F3F3), width: 1)),
                          borderRadius: BorderRadius.circular(30),
                          color: index2 == 2 ? const Color(0xFF1D272F) : Colors.white,
                        ),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                        child: Text(
                          "On Process",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color:
                                index2 == 2 ? Colors.white : const Color(0xFFA7A9B7),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        index2 = 3;
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.fromBorderSide(index2 == 3
                              ? BorderSide.none
                              : const BorderSide(color: Color(0xFFF3F3F3), width: 1)),
                          borderRadius: BorderRadius.circular(30),
                          color: index2 == 3 ? const Color(0xFF1D272F) : Colors.white,
                        ),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                        child: Text(
                          "Delivered",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color:
                                index2 == 3 ? Colors.white : const Color(0xFFA7A9B7),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              index1 == 0 ? const FromMe() : const ToMe(),
            ],
          ),
        ),
      ],
    );
  }
}
