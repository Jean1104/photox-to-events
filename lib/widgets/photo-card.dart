
import 'package:flutter/material.dart';
import 'package:photo/pallete.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({
    required this.source,
    Key? key,
  }) : super(key: key);

  final String source;

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 17.0),
          child: Container(
            alignment: Alignment.topLeft,
            width: screenWidth * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: kGreen.withOpacity(0.2),
                    width: 2.0
                )
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(source),
            ),
          ),
        )
      ],
    );
  }
}
