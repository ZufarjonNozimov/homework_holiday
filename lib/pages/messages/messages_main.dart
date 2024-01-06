import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_holiday/pages/messages/message_detail.dart';

class MessagesPage extends StatefulWidget {
  String text;
  MessagesPage({super.key, required this.text});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
                      "Messages",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
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
                          "Search Messages",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF1D272F),
                          ),
                        ),
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
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => MessageDetailPage(),
                            ),
                          );
                        },
                        child: const CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                            "https://uxwing.com/wp-content/themes/uxwing/download/peoples-avatars/man-person-icon.png",
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Maddy Lin",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF191D31),
                            ),
                          ),
                          Text(
                            widget.text,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA7A9B7),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        "3:74 Pm",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA7A9B7),
                        ),
                      )
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
