import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Text(
                  "Recent",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF191D31),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFD683D),
                  ),
                  child: Text(
                    "4",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Clear All",
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
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D272F),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset("asset/icons/sms.svg"),
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Kathryn Sent You a Message",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF191D31),
                          ),
                        ),
                        SizedBox(
                          width: 46,
                        ),
                        Text(
                          "2 m ago",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA7A9B7),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Tap to see the message",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA7A9B7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 1.5,
              width: double.maxFinite,
              color: Color(0xFFF3F3F3),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D272F),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset("asset/icons/kub.svg"),
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Your Shipping Already\nDelivered",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF191D31),
                          ),
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        Text(
                          "2 m ago",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA7A9B7),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Tap to  see the detail shipping",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA7A9B7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 1.5,
              width: double.maxFinite,
              color: Color(0xFFF3F3F3),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D272F),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset("asset/icons/sms.svg"),
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Try The Latest Service From\nTracky!",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF191D31),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "2 m ago",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA7A9B7),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Let’s try the feature we provide",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA7A9B7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 1.5,
              width: double.maxFinite,
              color: Color(0xFFF3F3F3),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D272F),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset("asset/icons/discount.svg"),
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Get 20% Discount for First\nTransaction!",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF191D31),
                          ),
                        ),
                        SizedBox(
                          width: 56,
                        ),
                        Text(
                          "10 m ago",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA7A9B7),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "For all transaction without requirements",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFA7A9B7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
