import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_holiday/pages/messages/widgets/w_writer_window.dart';

class CostumerService extends StatefulWidget {
  const CostumerService({super.key});

  @override
  State<CostumerService> createState() => _CostumerServiceState();
}

class _CostumerServiceState extends State<CostumerService> {
  TextEditingController messageController = TextEditingController();
  String text = "";
  bool icTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
        shadowColor: Color(0xFFA7AEC1),
        elevation: 0.2,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset("asset/icons/pop.svg"),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              alignment: Alignment.topRight,
              height: 46,
              width: 46,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    "https://uxwing.com/wp-content/themes/uxwing/download/peoples-avatars/man-person-icon.png",
                  ),
                ),
              ),
              child: SvgPicture.asset("asset/icons/point_stack.svg"),
            ),
            const SizedBox(
              width: 14,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Customer Service",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF151B33),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Online",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA7AEC1),
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.more_vert,
              color: Color(0xFF191D31),
              size: 22,
            ),
            SizedBox(
              width: 32,
            ),
          ],
        ),
      ),
      body: icTrue
          ? WriteWindowWidget(
              message: text,
            )
          : null,
      bottomNavigationBar: BottomAppBar(
        elevation: 0.5,
        shadowColor: Color(0xFFA7AEC1),
        surfaceTintColor: Colors.white,
        color: Colors.white,
        height: 90,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                height: 52,
                width: 296,
                decoration: BoxDecoration(
                  color: Color(0xFFF9F9F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: messageController,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset("asset/images/smile.png"),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SvgPicture.asset("asset/icons/message_writer.svg"),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA7A9B7),
                    ),
                    hintText: "Type your message",
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  icTrue = true;
                  text = messageController.text;
                  messageController.clear();
                  setState(() {});
                  // messageController.clear();
                  // setState(() {});
                },
                child: SvgPicture.asset("asset/icons/send.svg"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
