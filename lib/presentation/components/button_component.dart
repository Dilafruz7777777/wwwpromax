import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wwwpromax/presentation/style/style.dart';
class ButtonComponent extends StatefulWidget {
  final Color color;
  final String text;
  const ButtonComponent({Key? key, required this.color, required this.text,  }) : super(key: key);

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.r,
      width: 380.r,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.all(Radius.circular(16),),
      ),
      child: Center(
        child: Text(
          widget.text,
          style: Style.textStyleButtonWhite(),

        ),
      ),

    );
  }
}