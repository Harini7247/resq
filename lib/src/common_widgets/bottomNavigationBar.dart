import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resq/src/common_widgets/selectedIndex.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';
import 'package:resq/src/features/authentication/screens/contact/contact.dart';
import 'package:resq/src/features/authentication/screens/home/home.dart';
import 'package:resq/src/features/authentication/screens/profile/profile.dart';

class BNB extends StatefulWidget {
  const BNB({super.key});
  @override
  State<BNB> createState() => _BNBState();
}



class _BNBState extends State<BNB> {

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    // Navigation logic based on the selected index
    switch (index) {
      case 0:
        Get.to(()=>Home(),arguments:selectedIndex);
        break;
      case 1:
        Get.to(()=>Contact(),arguments:selectedIndex);
        break;
      case 2:
        Get.to(()=>Profile(),arguments:selectedIndex);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            size: tSizeMedium,
            color: selectedIndex == 0 ? tSecondaryColor1 : tSecondaryColor3,
          ),
          label: tBNBLabel1,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.phone,
            size: tSizeMedium,
            color: selectedIndex == 1 ? tSecondaryColor1 : tSecondaryColor3,
          ),
          label: tBNBLabel2,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: tSizeMedium,
            color: selectedIndex == 2 ? tSecondaryColor1 : tSecondaryColor3,
          ),
          label: tBNBLabel3,
        ),
      ],
    );
  }
}
