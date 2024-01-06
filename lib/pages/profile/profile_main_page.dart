import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:homework_holiday/pages/profile/chenged_password.dart';
import 'package:homework_holiday/pages/profile/edit_profile_page.dart';
import 'package:homework_holiday/pages/splash/splash_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Box authBox = Hive.box("authBox");
  List pages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Profile",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 38,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 27,
                      backgroundImage: NetworkImage(
                          "https://uxwing.com/wp-content/themes/uxwing/download/peoples-avatars/man-person-icon.png"),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${authBox.get("name")}",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "${authBox.get("number")}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const EditProfile(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 0.15),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Text(
                          "Edit Profile",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                        height: 30,
                      ),
                      const Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF191D31),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CupertinoButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const ChangedPasswordPage(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
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
                              Image.asset(
                                "asset/images/lock.png",
                                height: 24,
                                width: 24,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              const Text(
                                "Change Password",
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
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 10,
                        ),
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
                            Image.asset(
                              "asset/images/Globe.png",
                              height: 24,
                              width: 24,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            const Text(
                              "Language",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF191D31),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 10,
                        ),
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
                            Image.asset(
                              "asset/images/notificat.png",
                              height: 24,
                              width: 24,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            const Text(
                              "Notification",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF191D31),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "About Us",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF191D31),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 10,
                        ),
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
                            Image.asset(
                              "asset/images/Help.png",
                              height: 24,
                              width: 24,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            const Text(
                              "FAQ",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF191D31),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 10,
                        ),
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
                            Image.asset(
                              "asset/images/Security.png",
                              height: 24,
                              width: 24,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            const Text(
                              "Privacy Policy",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF191D31),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 10,
                        ),
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
                            Image.asset(
                              "asset/images/Team.png",
                              height: 24,
                              width: 24,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            const Text(
                              "Contact Us",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF191D31),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "About Us",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF191D31),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 10,
                        ),
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
                            Image.asset(
                              "asset/images/Share.png",
                              height: 24,
                              width: 24,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            const Text(
                              "Share",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF191D31),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 10,
                        ),
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
                              "Get The Latest Version",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF191D31),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          CupertinoButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              authBox.delete("isRegister");
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => SplashPage(),
                                  ),
                                  (route) => false);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 40),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.red),
                              child: const Text(
                                "Long Out",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          CupertinoButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              authBox.deleteAll(authBox.keys);
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) => SplashPage(),
                                  ),
                                  (route) => false);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 40),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.red),
                              child: const Text(
                                "Deleted Account",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
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
