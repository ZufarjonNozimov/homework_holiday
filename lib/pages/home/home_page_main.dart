import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_holiday/pages/check_rest/check_rest_page.dart';
import 'package:homework_holiday/pages/help_centre/help_centr_main.dart';
import 'package:homework_holiday/pages/nearby_drop/nearby_drop_page.dart';
import 'package:homework_holiday/pages/notifications/notifications_page.dart';
import 'package:homework_holiday/pages/order/sebder_detail.dart';
import 'package:homework_holiday/pages/tracking/track_page.dart';
import 'package:homework_holiday/pages/wallet/wallet_page.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({super.key});

  @override
  State<HomePageMain> createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          toolbarHeight: 316,
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
                  Image.asset(
                    "asset/icons/appBar_logo.png",
                    height: 28,
                    width: 283,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const NotificationsPage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "asset/images/Notification.png",
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
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 14,
                ),
                height: 78,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Balance",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA7A9B7),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          r"$3.382.00",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF191D31),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      "Top Up",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF1D272F),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset("asset/icons/add.svg"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const TrackPage(),
                    ),
                  );
                },
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 34,
                    ),
                    const Text(
                      "Features",
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => CheckRetsPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(16),
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
                              child: Image.asset(
                                  "asset/images/home_page_picture1.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => const NearbyDropPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(16),
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
                              child: Image.asset(
                                  "asset/images/home_page_picture2.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => SenderDetailPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(16),
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
                              child: Image.asset(
                                  "asset/images/home_page_picture3.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => HelpCentrePage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(16),
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
                              child: Image.asset(
                                  "asset/images/home_page_picture4.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => WalletPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(16),
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
                              child: Image.asset(
                                  "asset/images/home_page_picture5.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(16),
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
                            child: Image.asset(
                                "asset/images/home_page_picture6.png"),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Services and Product",
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "MM09132005",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF191D31),
                                      ),
                                    ),
                                    Text(
                                      "Processed at sort facility",
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
                                  "2 Hrs",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFA7A9B7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "MM09132005",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF191D31),
                                      ),
                                    ),
                                    Text(
                                      "Processed at sort facility",
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
                                  "2 Hrs",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFA7A9B7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "MM09132005",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF191D31),
                                      ),
                                    ),
                                    Text(
                                      "Processed at sort facility",
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
                                  "2 Hrs",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFA7A9B7),
                                  ),
                                ),
                              ],
                            ),
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
      ],
    );
  }
}
