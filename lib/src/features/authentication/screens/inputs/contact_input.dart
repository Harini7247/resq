import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resq/src/common_widgets/next.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';
import 'package:resq/src/features/authentication/screens/inputs/medical_input.dart';
import 'package:resq/src/features/authentication/screens/register/register.dart';

class contactInput extends StatelessWidget {
  const contactInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor:tGreyColor,
        body:SafeArea(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 20.0),
                child: Column(
                  children: [
                    Row(
                        children:[
                          GestureDetector(
                            onTap:(){
                              Get.to(()=>register());
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color:tSecondaryColor1,
                              size:tSizeMedium,
                            ),
                          ),
                        ]
                    ),
                    SizedBox(
                        height:20.0
                    ),
                    Text(
                      tInpContactDet,
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        color: tSecondaryColor1,
                        fontWeight: FontWeight.w800,
                        fontSize: tSubHeadingSize,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    MyForm(),
                    const SizedBox(
                        height: 30.0
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(()=>medicalInput());
                      },
                      child: Next(),
                    ),
                  ],
                ),
              ),
            )
        )
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            width: tRegisterFormWidth,
            height: tformHeight,
            child: TextFormField(
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
                  color: tSecondaryColor2,
                  fontWeight: FontWeight.w500,
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
          SizedBox(
            height: 6.0,
          ),
          SizedBox(
            width: tformWidth,
            height: tformHeight,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return tErrorMessage;
                }
                return null;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: tPrimaryColor,
                labelText: tInpHouseNo,
                labelStyle: const TextStyle(
                  fontSize: tTextSize,
                  color: tSecondaryColor2,
                  fontWeight: FontWeight.w500,
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
          SizedBox(
            height: 6.0,
          ),
          SizedBox(
            width: tformWidth,
            height: tformHeight,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return tErrorMessage;
                }
                return null;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: tPrimaryColor,
                labelText: tInpStreetName,
                labelStyle: const TextStyle(
                  fontSize: tTextSize,
                  color: tSecondaryColor2,
                  fontWeight: FontWeight.w500,
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
          SizedBox(
            height: 6.0,
          ),
          SizedBox(
            width: tformWidth,
            height: tformHeight,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return tErrorMessage;
                }
                return null;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: tPrimaryColor,
                labelText: tInpAreaName,
                labelStyle: const TextStyle(
                  fontSize: tTextSize,
                  color: tSecondaryColor2,
                  fontWeight: FontWeight.w500,
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
          SizedBox(
            height:6.0,
          ),
          SizedBox(
            width: tformWidth,
            height: tformHeight,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return tErrorMessage;
                }
                return null;
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: tPrimaryColor,
                labelText: tInpCityName,
                labelStyle: const TextStyle(
                  fontSize: tTextSize,
                  color: tSecondaryColor2,
                  fontWeight: FontWeight.w500,
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
          SizedBox(
            height:6.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 160.0,
                height: 60.0,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return tErrorMessage;
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: tPrimaryColor,
                    labelText: tInpPinCode,
                    labelStyle: const TextStyle(
                      fontSize: tTextSize,
                      color: tSecondaryColor2,
                      fontWeight: FontWeight.w500,
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
              SizedBox(
                width: 10.0,
              ),
              SizedBox(
                width: 160.0,
                height: 60.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: tPrimaryColor,
                    labelText: tInpLandline,
                    labelStyle: const TextStyle(
                      fontSize: tTextSize,
                      color: tSecondaryColor2,
                      fontWeight: FontWeight.w500,
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
            ],
          ),
        ],
      ),
    );
  }
}


