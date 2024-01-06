import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_holiday/pages/help_centre/costumer_service.dart';

class HelpCentreDetail extends StatefulWidget {
  const HelpCentreDetail({super.key});

  @override
  State<HelpCentreDetail> createState() => _HelpCentreDetailState();
}

class _HelpCentreDetailState extends State<HelpCentreDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Help Center",
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Container(
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFF9F9F9),
                  ),
                  child: TextField(
                    onTap: () {
                      // ontap = true;
                      // setState(() {});
                    },
                    // controller: _controller,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Tap to search faq",
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA7A9B7),
                      ),
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(14),
                        child: SvgPicture.asset(
                          "asset/icons/search1.svg",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "See Other Category",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Color(0xFF191D31),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.fromBorderSide(
                  BorderSide(
                    color: Color(0xFFF3F3F3),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CupertinoButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => CostumerService(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              "asset/images/Insurance.png",
                              height: 24,
                              width: 24,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            const Text(
                              "Insurance",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF191D31),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        width: 350,
                        height: 1,
                        color: Color(0xFFF3F3F3),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      const Text(
                        "Tracky insurance terms",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF191D31),
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        width: 350,
                        height: 1,
                        color: Color(0xFFF3F3F3),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      const Text(
                        "Why did the expedition turning around?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF191D31),
                        ),
                      ),
                    ],
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
