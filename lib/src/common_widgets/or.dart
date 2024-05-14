import 'package:flutter/material.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';

class Or extends StatelessWidget {
  const Or({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      tOr,
      style: const TextStyle(
        color: tSecondaryColor2,
        fontSize: tTextSize,
      ),
    );
  }
}