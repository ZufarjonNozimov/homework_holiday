import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_holiday/pages/tracking/track_detail.dart';

class TrackPage extends StatefulWidget {
  const TrackPage({super.key});

  @override
  State<TrackPage> createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  bool ontap = false;
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Track",
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
                      ontap = true;
                      setState(() {});
                    },
                    controller: _controller,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      hintText: "Enter track number",
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
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(14),
                        child: SvgPicture.asset(
                          "asset/icons/screen1.svg",
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
      body: ontap
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Tracking History",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF191D31),
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Delete All",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFD683D),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          elevation: 0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => TrackDetailPage(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset("asset/icons/oclock_tranparent.svg"),
                        SizedBox(
                          width: 14,
                        ),
                        Text(
                          "MM09130520",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF151B33),
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset("asset/icons/x.svg"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1.5,
                    color: Color(0xFFF3F3F3),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("asset/icons/oclock_tranparent.svg"),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        "84563217954",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF151B33),
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset("asset/icons/x.svg"),
                    ],
                  ),
                ],
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.all(40),
                    height: 160,
                    width: 160,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF8F9FB),
                    ),
                    child: Image.asset("asset/images/track_picture.png"),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "You Have No History  Yet",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF191D31),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 66),
                    child: Text(
                      "When tracking history appear, you will see them here",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA7A9B7),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
    );
  }
}
