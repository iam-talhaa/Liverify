import 'package:flutter/material.dart';
import 'package:liverify/res/Resources.dart';

class C_text extends StatefulWidget {
  const C_text({super.key});

  @override
  State<C_text> createState() => _C_textState();
}

class _C_textState extends State<C_text> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "",
      style: TextStyle(
        color: whiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }
}
