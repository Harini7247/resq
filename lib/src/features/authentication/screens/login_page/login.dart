import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resq/src/common_widgets/or.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/imagestrings.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';
import 'package:resq/src/features/authentication/controllers/signup_controller.dart';
import 'package:resq/src/features/authentication/screens/get_started/get_started.dart';

class logIn extends StatelessWidget {
  const logIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor:tGreyColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin:EdgeInsets.fromLTRB(30.0,40.0,30.0,20.0),
              child: Column(
                  children:[
                    Row(
                      children: [
                        GestureDetector(
                          onTap:(){
                            Get.to(()=>getStarted());
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color:tSecondaryColor1,
                            size:tSizeMedium,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height:40.0,
                    ),
                    Text(
                        tLoginWelcome,
                        style:TextStyle(
                          color:tSecondaryColor1,
                          fontWeight:FontWeight.w800,
                          fontSize:tSubHeadingSize,
                        )
                    ),
                    SizedBox(
                      height:20.0,
                    ),
                    Text(
                        tLoginToYourAccount,
                        style:TextStyle(
                          color:tSecondaryColor2,
                          fontWeight:FontWeight.w500,
                          fontSize:tTextSize,
                        )
                    ),
                    SizedBox(
                        height:30.0
                    ),
                    MyForm(),
                    SizedBox(
                        height:30.0
                    ),
                    Or(),
                    SizedBox(
                      height:30.0,
                    ),
                    loginWithGoogle(),
                  ]
              ),
            ),
          ),
        )
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final controller=Get.put(SignUpController());
  final _formKey=GlobalKey<FormState>();
  bool _showPassword=false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key:_formKey,
        child:Column(
            children:[
              SizedBox(
                width:tformWidth,
                height:tformHeight,
                child: TextFormField(
                  controller:controller.email,
                  validator:(value){
                    if (value==null||value.isEmpty){
                      return tErrorMessage;
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      filled:true,
                      fillColor:tPrimaryColor,
                      labelText: tLabel2,
                      labelStyle: TextStyle(
                        fontSize:tTextSize,
                        color:tBlackColor,
                        fontWeight:FontWeight.w500,
                      ),
                      prefixIcon:Icon(
                        Icons.person,
                        color:tSecondaryColor1,
                        size:tSizeSmall,
                      ),
                      enabledBorder:OutlineInputBorder(
                        borderSide:BorderSide(
                            color: tSecondaryColor1,
                            width:2.0
                        ),
                        borderRadius:BorderRadius.circular(30.0),
                      )
                  ),
                ),
              ),
              SizedBox(
                height:16.0,
              ),
              SizedBox(
                width:tformWidth,
                height:tformHeight,
                child: TextFormField(
                  controller:controller.password,
                  obscureText:!_showPassword,
                  validator:(value){
                    if (value==null||value.isEmpty){
                      return tErrorMessage;
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    filled:true,
                    fillColor:tPrimaryColor,
                    labelText: tLabel4,
                    labelStyle: TextStyle(
                      fontSize:tTextSize,
                      color:tBlackColor,
                      fontWeight:FontWeight.w500,
                    ),
                    prefixIcon:Icon(
                      Icons.lock,
                      color:tSecondaryColor1,
                      size:tSizeSmall,
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderSide:BorderSide(
                          color: tSecondaryColor1,
                          width:2.0
                      ),
                      borderRadius:BorderRadius.circular(30.0),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _showPassword = !_showPassword; // Toggle _showPassword
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
              SizedBox(
                height:16.0,
              ),
              GestureDetector(
                child: Text(
                  tForgotPassword,
                  style:TextStyle(
                    color:tSecondaryColor1,
                    fontSize:tTextSize,
                    fontWeight:FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height:30.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      SignUpController.instance.loginUser(controller.email.text.trim(),controller.password.text.trim());
                      _formKey.currentState!.save();
                    }

                  },
                  child: Text(tLogin,
                      style: TextStyle(
                        fontSize:tSubSubHeadingSize,
                      )
                  ),
                  style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all<Color>(tSecondaryColor1),
                    foregroundColor:MaterialStateProperty.all<Color>(tPrimaryColor),
                    padding:MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0)),
                  )
              ),
            ]
        )
    );
  }
}

class loginWithGoogle extends StatelessWidget {
  const loginWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width:tGoogleButtonWidth,
        height:tGoogleButtonHeight,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:MaterialStateProperty.all<Color>(tPrimaryColor),
          ),
          onPressed: (){},
          child: Row(
            children: [
              Image.asset(
                tGoogleIcon,
                width:tSizeSmall,
                height:tSizeSmall,
              ),
              SizedBox(
                width:20.0,
              ),
              Text(
                tLoginWithGoogle,
                style: TextStyle(
                  fontSize:tContentSize,
                  fontWeight:FontWeight.w600,
                  color:tSecondaryColor2,
                ),
              ),
            ],
          ),
        )
    );
  }
}





