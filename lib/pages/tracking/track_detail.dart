import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_holiday/pages/tracking/sceen/scan_barcode.dart';

class TrackDetailPage extends StatefulWidget {
  const TrackDetailPage({super.key});

  @override
  State<TrackDetailPage> createState() => _TrackDetailPageState();
}

class _TrackDetailPageState extends State<TrackDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Detail Location",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Color(0xFF191D31),
          ),
        ),
        toolbarHeight: 60,
        leadingWidth: 100,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 46,
              width: 46,
              child: SvgPicture.asset("asset/icons/pop.svg"),
            ),
          ),
        ),
        actions: [
          const Icon(
            Icons.more_vert_outlined,
            color: Color(0xFF151B33),
            size: 22,
          ),
          const SizedBox(
            width: 36,
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset("asset/images/Screenshot 2024-01-03 at 16.01.07.png"),
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
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    openBottomSheet();
                  },
                  child: const Text(
                    "Your Package on The Way",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF191D31),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Text(
                  "Arriving at pick up point in 2 mins",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA7A9B7),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            height: 1.5,
            color: const Color(0xFFF3F3F3),
            margin: const EdgeInsets.symmetric(horizontal: 24),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 23,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDVJZSsFRquEhWK_qlau6Lr6jN4hLhkzSmyg&usqp=CAU"),
                ),
                const SizedBox(
                  width: 14,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Harry Johnson",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF191D31),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text("⭐️ 4.9"),
                  ],
                ),
                const Spacer(),
                SvgPicture.asset("asset/icons/call.svg"),
                const SizedBox(
                  width: 14,
                ),
                SvgPicture.asset("asset/icons/sms_stack.svg"),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            height: 1.5,
            color: const Color(0xFFF3F3F3),
            margin: const EdgeInsets.symmetric(horizontal: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Column(
                  children: [
                    SvgPicture.asset("asset/icons/record_cicle.svg"),
                    const SizedBox(
                      height: 5,
                    ),
                    Image.asset(
                      "asset/images/Line 12.png",
                      height: 20,
                      width: 1.5,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SvgPicture.asset("asset/icons/locations.svg"),
                  ],
                ),
                const SizedBox(
                  width: 14,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1213 Washington Blvd, Belpre, OH ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF191D31),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      "121 Pike St, Marietta, OH ",
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
    );
  }

  openBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 2,
          child: Container(
            width: double.maxFinite,
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
                    height: 30,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          openBottomSheet();
                        },
                        child: const Text(
                          "Your Package on The Way",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF191D31),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Arriving at pick up point in 2 mins",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA7A9B7),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: 1.5,
                    color: const Color(0xFFF3F3F3),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 23,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDVJZSsFRquEhWK_qlau6Lr6jN4hLhkzSmyg&usqp=CAU"),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Harry Johnson",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF191D31),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("⭐️ 4.9"),
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset("asset/icons/call.svg"),
                      const SizedBox(
                        width: 14,
                      ),
                      SvgPicture.asset("asset/icons/sms_stack.svg"),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: 1.5,
                    color: const Color(0xFFF3F3F3),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "MM09130520",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF151B33),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Track Number",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFA7A9B7),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1-3 Hours",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF151B33),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Estimate Time",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFA7A9B7),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "5.5 Kg",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF151B33),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Package Weight",
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
                    height: 14,
                  ),
                  Container(
                    height: 1.5,
                    color: const Color(0xFFF3F3F3),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset("asset/icons/record_cicle.svg"),
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            "asset/images/Line 12.png",
                            height: 20,
                            width: 1.5,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SvgPicture.asset(
                              "asset/icons/record_circle_transparent.svg"),
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            "asset/images/Line 12.png",
                            height: 20,
                            width: 1.5,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SvgPicture.asset(
                              "asset/icons/record_circle_transparent.svg"),
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            "asset/images/Line 12.png",
                            height: 20,
                            width: 1.5,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SvgPicture.asset(
                              "asset/icons/locations_transparent.svg"),
                        ],
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1213 Washington Blvd, Belpre, OH ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF191D31),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "18 January 2022, 4:38 PM",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFA7A9B7),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "415 W Ervin Rd, Van Wert, OH",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFFA7A9B7),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "18 January 2022",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFA7A9B7),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "1110 Elida Ave, Delphos, OH ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFFA7A9B7),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "18 January 2022",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFA7A9B7),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "121 Pike St, Marietta, OH ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFFA7A9B7),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "18 January 2022",
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
                    height: 36,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      openBottomSheet2();
                    },
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
                    child: const Text(
                      "Report an Issue",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  openBottomSheet2() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 2,
          child: Container(
            width: double.maxFinite,
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
                    height: 30,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          openBottomSheet();
                        },
                        child: const Text(
                          "Your Package on The Way",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF191D31),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Arriving at pick up point in 2 mins",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA7A9B7),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: 1.5,
                    color: const Color(0xFFF3F3F3),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 23,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDVJZSsFRquEhWK_qlau6Lr6jN4hLhkzSmyg&usqp=CAU"),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Harry Johnson",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF191D31),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("⭐️ 4.9"),
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset("asset/icons/call.svg"),
                      const SizedBox(
                        width: 14,
                      ),
                      SvgPicture.asset("asset/icons/sms_stack.svg"),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: 1.5,
                    color: const Color(0xFFF3F3F3),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "MM09130520",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF151B33),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Track Number",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFA7A9B7),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1-3 Hours",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF151B33),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Estimate Time",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFA7A9B7),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "5.5 Kg",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF151B33),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Package Weight",
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
                    height: 14,
                  ),
                  Container(
                    height: 1.5,
                    color: const Color(0xFFF3F3F3),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset("asset/icons/record_cicle.svg"),
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            "asset/images/Line 12.png",
                            height: 20,
                            width: 1.5,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SvgPicture.asset("asset/icons/record_cicle.svg"),
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            "asset/images/Line 12.png",
                            height: 20,
                            width: 1.5,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SvgPicture.asset("asset/icons/record_cicle.svg"),
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset(
                            "asset/images/Line 12.png",
                            height: 20,
                            width: 1.5,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SvgPicture.asset("asset/icons/locations.svg"),
                        ],
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1213 Washington Blvd, Belpre, OH ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF191D31),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "18 January 2022, 4:38 PM",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFA7A9B7),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "415 W Ervin Rd, Van Wert, OH",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF191D31),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "18 January 2022",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFA7A9B7),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "1110 Elida Ave, Delphos, OH ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF191D31),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "18 January 2022",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFA7A9B7),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "121 Pike St, Marietta, OH ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF191D31),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "18 January 2022",
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
                    height: 36,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => ScanBarcodePage(),
                        ),
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
                      "Mark as Done",
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
          ),
        );
      },
    );
  }
}
