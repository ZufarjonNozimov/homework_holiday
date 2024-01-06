import 'package:flutter/material.dart';

class WriteWindowWidget extends StatefulWidget {
  final String message;
  const WriteWindowWidget({super.key, required this.message});

  @override
  State<WriteWindowWidget> createState() => _WriteWindowWidgetState();
}

class _WriteWindowWidgetState extends State<WriteWindowWidget>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;
  var box;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    // init();
    _animationController.forward();
    // _animationController.repeat(reverse: true);

    super.initState();
  }

  // init() async {
  //   box = await Hive.openBox("Messages");
  // }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SlideTransition(
                position: Tween(
                  begin: Offset(-1, 1),
                  end: Offset(0, 0),
                ).animate(_animationController),
                child: FadeTransition(
                  opacity: _animationController,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D272F),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      widget.message,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
