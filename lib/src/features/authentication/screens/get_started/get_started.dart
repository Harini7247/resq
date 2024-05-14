import 'package:flutter/material.dart';
import 'package:resq/src/common_widgets/or.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/imagestrings.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';
import 'package:resq/src/features/authentication/models/user_model.dart';
import 'package:get/get.dart';
import 'package:resq/src/features/authentication/controllers/signup_controller.dart';
import 'package:resq/src/features/authentication/screens/login_page/login.dart';

class getStarted extends StatelessWidget {
  const getStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: tGreyColor,
      body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 20.0),
            child: Column(
              children: [
                Text(
                  tTitle,
                  style: TextStyle(
                    color: tSecondaryColor1,
                    fontWeight: FontWeight.w800,
                    fontSize: tSubHeadingSize,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  tCreate,
                  style: TextStyle(
                    color: tSecondaryColor2,
                    fontWeight: FontWeight.w500,
                    fontSize: tTextSize,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                MyForm(),
                const SizedBox(
                    height: 10.0
                ),
                Or(),
                const SizedBox(
                  height: 10.0,
                ),
                SignUpUsingGoogle(),
                const SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(()=>logIn());
                  },
                  child: LoginPage(),
                ),
              ],
            ),
          ),
        ),
      );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final controller=Get.put(SignUpController());
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            width: tformWidth,
            height: tformHeight,
            child: TextFormField(
              controller:controller.fullName,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return tErrorMessage;
                }
                return null;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: tPrimaryColor,
                labelText: tLabel1,
                labelStyle: const TextStyle(
                  fontSize: tTextSize,
                  color: tBlackColor,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: const Icon(
                  Icons.person,
                  color: tSecondaryColor1,
                  size: 25.0,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: tSecondaryColor1,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          SizedBox(
            width: tformWidth,
            height: tformHeight,
            child: TextFormField(
              controller:controller.email,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return tErrorMessage;
                }
                return null;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: tPrimaryColor,
                labelText: tLabel2,
                labelStyle: const TextStyle(
                  fontSize: tTextSize,
                  color: tBlackColor,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: const Icon(
                  Icons.mail,
                  color: tSecondaryColor1,
                  size: tSizeSmall,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: tSecondaryColor1,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          SizedBox(
            width: 362.0,
            height: 80.0,
            child: TextFormField(
              controller:controller.phoneNo,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return tErrorMessage;
                }
                return null;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: tPrimaryColor,
                labelText: tLabel3,
                labelStyle: const TextStyle(
                  fontSize: tTextSize,
                  color: tBlackColor,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: const Icon(
                  Icons.phone,
                  color: tSecondaryColor1,
                  size: tSizeSmall,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: tSecondaryColor1,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          SizedBox(
            width: tformWidth,
            height: tformHeight,
            child: TextFormField(
              controller:controller.password,
              obscureText: !_showPassword,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return tErrorMessage;
                }
                return null;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: tPrimaryColor,
                labelText: tLabel4,
                labelStyle: const TextStyle(
                  fontSize: tTextSize,
                  color: tBlackColor,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: const Icon(
                  Icons.lock,
                  color: tSecondaryColor1,
                  size: tSizeSmall,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: tSecondaryColor1,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                  icon: Icon(
                    _showPassword ? Icons.visibility : Icons.visibility_off,
                    color: tSecondaryColor1,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                final user=UserModel(
                  email:controller.email.text.trim(),
                  fullName:controller.fullName.text.trim(),
                  password:controller.password.text.trim(),
                  phoneNo:controller.phoneNo.text.trim(),
                );
                SignUpController.instance.registerUser(controller.email.text.trim(),controller.password.text.trim());
                SignUpController.instance.createUser(user);
                _formKey.currentState!.save();
              }
            },
            child: Text(
              tsignUp,
              style: const TextStyle(
                fontSize: tSubSubHeadingSize,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(tSecondaryColor1),
              foregroundColor: MaterialStateProperty.all<Color>(tPrimaryColor),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)),
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpUsingGoogle extends StatelessWidget {
  const SignUpUsingGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: tGoogleButtonWidth,
      height: tGoogleButtonHeight,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(tPrimaryColor),
        ),
        onPressed: () {},
        child: Row(
          children: const [
            Image(
              image: AssetImage(tGoogleIcon),
              width: tSizeSmall,
              height: tSizeSmall,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              tsignUpWithGoogle,
              style: TextStyle(
                fontSize: tContentSize,
                fontWeight: FontWeight.w600,
                color: tSecondaryColor2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: tSubTextSize,
          color: tSecondaryColor2,
        ),
        children: <TextSpan>[
          const TextSpan(
            text: tAlready,
          ),
          TextSpan(
            text: tLoginHere,
            style: const TextStyle(
              color: tSecondaryColor1,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
