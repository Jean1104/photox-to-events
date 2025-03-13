
import 'package:flutter/material.dart';
import 'package:photo/pallete.dart';

class RoundedBoton extends StatelessWidget {
  const RoundedBoton({
    Key? key,
    required this.buttonName
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.07,
      width: size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.green
      ),
      child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, 'HomeScreen');
          },
          child: Text(
            this.buttonName,
            style: kBodyText.copyWith(fontWeight: FontWeight.bold),
          )
      ),
    );
  }
}