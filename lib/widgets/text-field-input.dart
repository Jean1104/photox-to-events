import 'package:flutter/material.dart';
import '../pallete.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
            height: size.height * 0.07,
            width: size.width * 0.8,
            decoration: BoxDecoration(
                color: kWhite.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16)
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Icon(
                      icon,
                      size: 25,
                      color: kWhite,
                    ),
                  ),
                  hintText: hint,
                  hintStyle: kBodyText,
                ),
                style: const TextStyle(color: kWhite),
                keyboardType: inputType,
                textInputAction: inputAction,
              ),
            )
        ),
      );
  }
}