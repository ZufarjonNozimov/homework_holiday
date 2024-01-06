import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_holiday/pages/home/home_page.dart';

class OrderDetailes extends StatefulWidget {
  const OrderDetailes({super.key});

  @override
  State<OrderDetailes> createState() => _OrderDetailesState();
}

class _OrderDetailesState extends State<OrderDetailes> {
  String text = "Select Services";
  bool isTrue = false;
  TextEditingController type = TextEditingController();
  TextEditingController service = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController length = TextEditingController();
  TextEditingController width = TextEditingController();
  TextEditingController height = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Order Details",
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              const SizedBox(
                height: 34,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: 218,
                        child: TextField(
                          onEditingComplete: () {
                            setState(() {});
                          },
                          controller: type,
                          decoration: InputDecoration(
                            prefixIcon: type.text.isNotEmpty
                                ? Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      "asset/images/product_picture.png",
                                      height: 24,
                                      width: 24,
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: SvgPicture.asset(
                                        "asset/icons/box1.svg"),
                                  ),
                            hintText: " Enter package type",
                            hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA7A9B7),
                            ),
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Color(0xFFF3F3F3),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Weight",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF191D31),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: 100,
                        child: TextField(
                          controller: weight,
                          decoration: InputDecoration(
                            suffixIcon: const Padding(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                "Kg",
                                style: TextStyle(
                                  color: Color(0xFF191D31),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            hintText: "0",
                            hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA7A9B7),
                            ),
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Color(0xFFF3F3F3),
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Dimension",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF191D31),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 52,
                      width: 100,
                      child: TextField(
                        controller: length,
                        decoration: InputDecoration(
                          suffixIcon: const Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              "Cm",
                              style: TextStyle(
                                color: Color(0xFF191D31),
                                fontSize: 14,
                              ),
                            ),
                          ),
                          hintText: "Length",
                          hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA7A9B7),
                          ),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color(0xFFF3F3F3),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 52,
                      width: 100,
                      child: TextField(
                        controller: width,
                        decoration: InputDecoration(
                          suffixIcon: const Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              "Cm",
                              style: TextStyle(
                                color: Color(0xFF191D31),
                                fontSize: 14,
                              ),
                            ),
                          ),
                          hintText: "Width",
                          hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA7A9B7),
                          ),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color(0xFFF3F3F3),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 52,
                      width: 100,
                      child: TextField(
                        controller: height,
                        decoration: InputDecoration(
                          suffixIcon: const Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              "Cm",
                              style: TextStyle(
                                color: Color(0xFF191D31),
                                fontSize: 14,
                              ),
                            ),
                          ),
                          hintText: "Height",
                          hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA7A9B7),
                          ),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color(0xFFF3F3F3),
                              width: 1,
                            ),
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
              const Row(
                children: [
                  Text(
                    "Services",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF191D31),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14),
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
                child: Row(
                  children: [
                    isTrue == true
                        ? Image.asset(
                            "asset/images/Services.png",
                            height: 24,
                            width: 24,
                            fit: BoxFit.cover,
                          )
                        : SvgPicture.asset("asset/icons/note.svg"),
                    const SizedBox(
                      width: 14,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: isTrue == true
                            ? const Color(0xFF191D31)
                            : const Color(0xFFA7A9B7),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      padding: const EdgeInsets.all(0),
                      onPressed: () {
                        setState(() {
                          isTrue = true;
                        });
                        showModalBottomSheet(
                          backgroundColor: Colors.white,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 400,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    "asset/images/Bar.png",
                                    height: 6,
                                    width: 60,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "Services",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xFF191D31),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  CupertinoButton(
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () {
                                      setState(() {
                                        text = "Regular";
                                      });
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
                                              borderRadius:
                                                  BorderRadius.circular(10),
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
                                    height: 20,
                                  ),
                                  CupertinoButton(
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () {
                                      text = "Cargo";
                                      setState(() {});
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
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color(0xFFF2F4F9),
                                            ),
                                            child: Image.asset(
                                                "asset/images/truck.png"),
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
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  CupertinoButton(
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () {
                                      setState(() {
                                        text = "Express";
                                      });
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
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color(0xFFF2F4F9),
                                            ),
                                            child: Image.asset(
                                                "asset/images/Express.png"),
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
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      icon: SvgPicture.asset("asset/icons/arrow_bootom.svg"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("asset/images/Infobox.png"),
              const SizedBox(
                height: 182,
              ),
              ElevatedButton(
                onPressed: () {
                  if (type.text.isNotEmpty &&
                      weight.text.isNotEmpty &&
                      length.text.isNotEmpty &&
                      height.text.isNotEmpty &&
                      width.text.isNotEmpty) {
                    showModalBottomSheet(
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      context: context,
                      builder: (context) => FractionallySizedBox(
                        heightFactor: 0.8,
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 46,
                                ),
                                const Text(
                                  "Payment Method",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF191D31),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 82,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: const Border.fromBorderSide(
                                      BorderSide(
                                        color: Color(0xFF1D272F),
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
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color(0xFFF2F4F9),
                                          ),
                                          child: Image.asset(
                                              "asset/images/Balance.png")),
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
                                            "Tracky Balance",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF191D31),
                                            ),
                                          ),
                                          Text(
                                            r"$4.875.00",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFFA7A9B7),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        padding: const EdgeInsets.all(16),
                                        child: Image.asset(
                                            "asset/images/Radio.png"),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xFFF3F3F3),
                                        ),
                                        child: SvgPicture.asset(
                                            "asset/icons/mastercard.svg"),
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
                                            "Mastercard",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF191D31),
                                            ),
                                          ),
                                          Text(
                                            "6895 3526 8456 ****",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFFA7A9B7),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        padding: const EdgeInsets.all(16),
                                        height: 20,
                                        width: 20,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.fromBorderSide(
                                            BorderSide(
                                              color: Color(0xFFA7A9B7),
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                ElevatedButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                      backgroundColor: const Color.fromRGBO(
                                          25, 29, 49, 0.30),
                                      isScrollControlled: false,
                                      shape: BeveledRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0)),
                                      context: context,
                                      builder: (context) {
                                        return FractionallySizedBox(
                                          heightFactor: 1.44,
                                          child: Container(
                                            color: const Color(0xFFFDFDFE),
                                            height: double.maxFinite,
                                            width: double.maxFinite,
                                            child: Column(
                                              children: [
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Image.asset(
                                                  "asset/images/Bar.png",
                                                  height: 6,
                                                  width: 60,
                                                ),
                                                const SizedBox(
                                                  height: 30,
                                                ),
                                                Image.asset(
                                                  "asset/images/Screenshot 2024-01-06 at 12.02.31.png",
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 24),
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator
                                                          .pushAndRemoveUntil(
                                                        context,
                                                        CupertinoPageRoute(
                                                            builder: (context) =>
                                                                const HomePage()),
                                                        ((route) => false),
                                                      );
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30)),
                                                      backgroundColor:
                                                          const Color(
                                                              0xFFFD683D),
                                                      fixedSize:
                                                          const Size.fromWidth(
                                                              double.maxFinite),
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 15),
                                                    ),
                                                    child: const Text(
                                                      "Go to Homepage",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        color: Colors.white,
                                                      ),
                                                    ),
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
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    backgroundColor: const Color(0xFFFD683D),
                                    fixedSize:
                                        const Size.fromWidth(double.maxFinite),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                  ),
                                  child: const Text(
                                    "Confirm Payment",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 44,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please enter all information"),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  backgroundColor: const Color(0xFFFD683D),
                  fixedSize: const Size.fromWidth(double.maxFinite),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pay Now",
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
    );
  }
}
