import 'package:flutter/material.dart';
import 'package:photo/pallete.dart';


class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    Key? key,
    required this.padding,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: padding,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.12),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            Icon(
              Icons.search,
              color: kWhite.withOpacity(0.6),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(child: TextField(
              style: TextStyle(
                color: kWhite.withOpacity(0.6),
                fontSize: 17,
                letterSpacing: -0.41,
              ),
              decoration: InputDecoration(
                hintText: 'Buscar',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: kWhite.withOpacity(0.6),
                  fontSize: 17,
                  letterSpacing: -0.41
                )
              ),
            )),
            Icon(
              Icons.mic_outlined,
              color: kWhite.withOpacity(0.6),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
