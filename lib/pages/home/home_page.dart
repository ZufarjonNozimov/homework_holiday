import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_holiday/pages/home/home_page_main.dart';
import 'package:homework_holiday/pages/messages/messages_main.dart';
import 'package:homework_holiday/pages/my_order/my_order_main_page.dart';
import 'package:homework_holiday/pages/profile/profile_main_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currrentIndex = 0;
  var pages = [
    HomePageMain(),
    MyOrderPage(),
    MessagesPage(
      text: "",
    ),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: currrentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: currrentIndex,
        onTap: (value) {
          currrentIndex = value;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: currrentIndex == 0
                ? SvgPicture.asset("asset/icons/home.svg")
                : SvgPicture.asset("asset/icons/home_transparent.svg"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: currrentIndex == 1
                ? SvgPicture.asset("asset/icons/my_order_black.svg")
                : SvgPicture.asset("asset/icons/my_order.svg"),
            label: "My Order",
          ),
          BottomNavigationBarItem(
            icon: currrentIndex == 2
                ? SvgPicture.asset("asset/icons/message_black.svg")
                : SvgPicture.asset("asset/icons/messages.svg"),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: currrentIndex == 3
                ? SvgPicture.asset("asset/icons/person_black.svg")
                : SvgPicture.asset("asset/icons/profile.svg"),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
