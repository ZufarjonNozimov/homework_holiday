import 'package:flutter/cupertino.dart';

class FromMe extends StatelessWidget {
  const FromMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "4 Results",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF191D31),
            ),
          ),
          SizedBox(
            height: 20,
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
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF2F4F9),
                  ),
                  child: Image.asset("asset/images/product_picture.png"),
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
                      "On transit area",
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
                  "Delivered",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF1D272F),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
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
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF2F4F9),
                  ),
                  child: Image.asset("asset/images/product_picture.png"),
                ),
                const SizedBox(
                  width: 14,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "MA84561259",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF191D31),
                      ),
                    ),
                    Text(
                      "Returned to sender",
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
                  "Pending",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFFFD683D),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
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
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF2F4F9),
                  ),
                  child: Image.asset("asset/images/product_picture.png"),
                ),
                const SizedBox(
                  width: 14,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "FU84593276",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF191D31),
                      ),
                    ),
                    Text(
                      "Waiting to picked up",
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
                  "On Process",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF1D272F),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
