import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_holiday/pages/home/home_page.dart';

class NearbyDropPage extends StatefulWidget {
  const NearbyDropPage({super.key});

  @override
  State<NearbyDropPage> createState() => _NearbyDropPageState();
}

class _NearbyDropPageState extends State<NearbyDropPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Nearby Drop",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Color(0xFF191D31),
          ),
        ),
        leadingWidth: 100,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SvgPicture.asset("asset/icons/pop.svg"),
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Color(0xFF151B33),
          ),
          SizedBox(
            width: 36,
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/images/map.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 83,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Container(
                  height: 46,
                  width: 46,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("asset/images/point1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 110,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 46,
                  width: 46,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("asset/images/point1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 6,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFDFE2EB),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.all(14),
                        height: 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFFF9F9F9),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset("asset/icons/search1.svg"),
                            const SizedBox(
                              width: 14,
                            ),
                            const Text(
                              "Search location",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFA7A9B7),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("asset/icons/locations.svg"),
                          const SizedBox(
                            width: 14,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    shape: BeveledRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    context: context,
                                    builder: (context) => FractionallySizedBox(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 24),
                                        decoration: const BoxDecoration(
                                            color: Color(0xFFFFFFFF)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 6,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color(0xFFDFE2EB),
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              padding: const EdgeInsets.all(24),
                                              height: 80,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(18),
                                                color: const Color(0xFFF2F4F9),
                                              ),
                                              child: SvgPicture.asset(
                                                  "asset/icons/locations.svg"),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            const Text(
                                              "New Montgomery",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w800,
                                                color: Color(0xFF191D31),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            const Text(
                                              "4517 Washington Ave. Manchester, Kentucky 39495",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFA7A9B7),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                    "asset/icons/oclock.svg"),
                                                const Text(
                                                  "09:00 AM - 05:00PM",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF191D31),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
                                                SvgPicture.asset(
                                                  "asset/icons/road.svg",
                                                ),
                                                const Text(
                                                  "4.5 KM from you",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF191D31),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                              height: 1,
                                              color: const Color(0xFFF3F3F3),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              "0812274616352",
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFA7A9B7),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Container(
                                              height: 1,
                                              color: const Color(0xFFF3F3F3),
                                            ),
                                            const Spacer(),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pushAndRemoveUntil(
                                                    context,
                                                    CupertinoPageRoute(
                                                        builder: (context) =>
                                                            HomePage()),
                                                    (route) => false);
                                              },
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30)),
                                                backgroundColor:
                                                    const Color(0xFFFD683D),
                                                fixedSize: const Size.fromWidth(
                                                    double.maxFinite),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 15),
                                              ),
                                              child: const Text(
                                                "Dial",
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
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                fixedSize: const Size.fromWidth(
                                                    double.maxFinite),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 15),
                                              ),
                                              child: const Text(
                                                "Sign In as Guest",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            const Spacer(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "New Montgomery",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF191D31),
                                  ),
                                ),
                              ),
                              const Text(
                                "4517 Washington Ave. Manchester...",
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
                            "3.21 KM",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF191D31),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 1,
                        color: const Color(0xFFF3F3F3),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("asset/icons/locations.svg"),
                          const SizedBox(
                            width: 14,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Manchester",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF191D31),
                                ),
                              ),
                              Text(
                                "2118 Thornridge Cir. Syracuse...",
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
                            "2.24 KM",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF191D31),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 1,
                        color: const Color(0xFFF3F3F3),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("asset/icons/locations.svg"),
                          const SizedBox(
                            width: 14,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "New Castle",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF191D31),
                                ),
                              ),
                              Text(
                                "2118 Thornridge Cir. Syracuse...",
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
                            "2.84 KM",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF191D31),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
