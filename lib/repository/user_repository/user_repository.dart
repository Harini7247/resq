import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/text_strings.dart';
import 'package:resq/src/features/authentication/models/user_model.dart';


class UserRepository extends GetxController{
  static UserRepository get instance=>Get.find();

  final _db=FirebaseFirestore.instance;

  Future<void> createUser(UserModel user) async {
    try {
      await _db.collection("users").add(user.toJson());
      Get.snackbar(
        tsb1,
        tsb2,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: tPrimaryColor,
        colorText: tSecondaryColor1,
      );
    } catch (error, stackTrace) {
      Get.snackbar(
        terrorsb1,
        terrorsb2,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: tPrimaryColor,
        colorText: tSecondaryColor1,
      );
      print(error.toString());
      // Return a value of the future's type, for example:
      throw error; // Rethrow the error to propagate it further
    }
  }
}