import 'package:first_stacked_app/ui/common/app_constants.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kdDesktopMaxContentWidth * 0.3,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: const Color(0xFF232323),
          borderRadius: BorderRadius.circular(8)),
      child: const TextField(
        decoration: InputDecoration.collapsed(
          hintText: "Your email",
          hintStyle: TextStyle(color: Color(0xff989898)),
          filled: true,
          fillColor: Color(0xFF232323),
        ),
      ),
    );
  }
}
