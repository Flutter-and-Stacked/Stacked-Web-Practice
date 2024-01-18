import 'package:first_stacked_app/extensions/hover_extensions.dart';
import 'package:flutter/material.dart';

class HomeNotifyButton extends StatelessWidget {
  final Function()? onTap;
  const HomeNotifyButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: const Text(
          "Notify Me",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
    ).scaleOnHover();
  }
}
