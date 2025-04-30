import 'package:flutter/material.dart';

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
          height: 28,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: widget.B_color,
          ),
          child: Center(
            child: Text(
              widget.name,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
