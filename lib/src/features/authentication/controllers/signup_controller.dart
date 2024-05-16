import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resq/repository/authentication_repository/authentication_repository.dart';
import 'package:resq/repository/user_repository/user_repository.dart';
import 'package:resq/src/features/authentication/models/user_model.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();
  final fullName=TextEditingController();
  final email=TextEditingController();
  final phoneNo=TextEditingController();
  final password=TextEditingController();

  final UserRepo=Get.put(UserRepository());

  void registerUser(String email,String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }

  void loginUser(String email,String password){
    AuthenticationRepository.instance.loginUserWithEmailAndPassword(email, password);
  }

  Future<void> createUser(UserModel user) async{
    await UserRepo.createUser(user);
  }
}