import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class C_button extends StatefulWidget {
  final name;
  Color B_color;
  VoidCallback ontap;

  C_button({
    super.key,
    required this.name,
    required this.B_color,
    required this.ontap,
  });

  @override
  State<C_button> createState() => _C_buttonState();
}

class _C_buttonState extends State<C_button> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 40.h,
          width: 150.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: widget.B_color,
          ),
          child: Center(
            child: Text(
              widget.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
