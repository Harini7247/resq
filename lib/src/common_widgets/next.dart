import 'package:flutter/material.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          tNext,
          style:TextStyle(
            color:tSecondaryColor1,
            fontSize:tContentSize,
            fontWeight:FontWeight.w600,
          ),
        ),
        Icon(Icons.keyboard_arrow_right_outlined,
          size:tSizeSmdium,
          color:tSecondaryColor1,
        )
      ],
    );
  }
}