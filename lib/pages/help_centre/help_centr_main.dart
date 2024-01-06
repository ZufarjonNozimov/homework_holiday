import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_holiday/pages/help_centre/help_centre_detail_page.dart';

class HelpCentrePage extends StatefulWidget {
  const HelpCentrePage({super.key});

  @override
  State<HelpCentrePage> createState() => _HelpCentrePageState();
}

class _HelpCentrePageState extends State<HelpCentrePage> {
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Category",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF191D31),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const HelpCentreDetail(),
                            ),
                          );
                        },
                        child: Container(
                          height: 46,
                          decoration: BoxDecoration(
                            border: const Border.fromBorderSide(
                              BorderSide(
                                color: Color(0xFFF3F3F3),
                                width: 1,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 14,
                              ),
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
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        height: 46,
                        decoration: BoxDecoration(
                          border: const Border.fromBorderSide(
                            BorderSide(
                              color: Color(0xFFF3F3F3),
                              width: 1,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 14,
                            ),
                            Image.asset(
                              "asset/images/Mobile.png",
                              height: 24,
                              width: 24,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            const Text(
                              "App Guide",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF191D31),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 46,
                        decoration: BoxDecoration(
                          border: const Border.fromBorderSide(
                            BorderSide(
                              color: Color(0xFFF3F3F3),
                              width: 1,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 14,
                            ),
                            Image.asset(
                              "asset/images/Dimension.png",
                              height: 24,
                              width: 24,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            const Text(
                              "Track",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF191D31),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        height: 46,
                        decoration: BoxDecoration(
                          border: const Border.fromBorderSide(
                            BorderSide(
                              color: Color(0xFFF3F3F3),
                              width: 1,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 14,
                            ),
                            Image.asset(
                              "asset/images/dollar.png",
                              height: 24,
                              width: 24,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            const Text(
                              "Check Rates",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF191D31),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Popular Searched",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF191D31),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: isTrue == true ? 180 : 50,
                        decoration: BoxDecoration(
                          border: const Border.fromBorderSide(
                            BorderSide(
                              color: Color(0xFFF3F3F3),
                              width: 1,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 14,
                                ),
                                const Text(
                                  "Why my track is not showing",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF191D31),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {
                                    isTrue = !isTrue;
                                    setState(() {});
                                  },
                                  icon: isTrue == true
                                      ? const Icon(
                                          CupertinoIcons.minus,
                                          color: Color(0xFF1D272F),
                                          size: 24,
                                        )
                                      : SvgPicture.asset(
                                          "asset/icons/add_.svg"),
                                ),
                              ],
                            ),
                            isTrue == true
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14),
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Justo, fames odio enim, risus, ac tristique turpis. Ut molestie tempus, donec mauris nibh dolor urna eu. In dapibus eget eget in semper.",
                                          textAlign: TextAlign.start,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 1.5,
                                          color: const Color(0xFFF3F3F3),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              "Does this help you?",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFA7A9B7),
                                              ),
                                            ),
                                            const Spacer(),
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                  padding:
                                                      const EdgeInsets.all(0)),
                                              onPressed: () {},
                                              child: const Text(
                                                "Yes",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF1D272F),
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                  padding:
                                                      const EdgeInsets.all(0)),
                                              onPressed: () {},
                                              child: const Text(
                                                "No",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF1D272F),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : const Column(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          border: const Border.fromBorderSide(
                            BorderSide(
                              color: Color(0xFFF3F3F3),
                              width: 1,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 14,
                                ),
                                const Text(
                                  "Tracky insurance terms",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF191D31),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {},
                                  icon:
                                      SvgPicture.asset("asset/icons/add_.svg"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          border: const Border.fromBorderSide(
                            BorderSide(
                              color: Color(0xFFF3F3F3),
                              width: 1,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 14,
                                ),
                                const Text(
                                  "How to place order",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF191D31),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {},
                                  icon:
                                      SvgPicture.asset("asset/icons/add_.svg"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          border: const Border.fromBorderSide(
                            BorderSide(
                              color: Color(0xFFF3F3F3),
                              width: 1,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 14,
                                ),
                                const Text(
                                  "How to do track",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF191D31),
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {},
                                  icon:
                                      SvgPicture.asset("asset/icons/add_.svg"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Contact Customer Service",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF191D31),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () async {},
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
                      SvgPicture.asset("asset/icons/whatsap.svg"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Contact Via Whatsapp",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("asset/icons/sms3.svg"),
                      SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Contact Via Email",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
