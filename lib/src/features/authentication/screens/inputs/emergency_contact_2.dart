import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resq/src/common_widgets/next.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';
import 'package:resq/src/features/authentication/screens/inputs/emergency_contact_1.dart';
import 'package:resq/src/features/authentication/screens/inputs/insurance.dart';

class emergencyContact2 extends StatelessWidget {
  const emergencyContact2({super.key});

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
                              Get.to(()=>emergencyContact1());
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
                      tAddEmerCont,
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
                    Text(
                        tEmerCont2,
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
                    const SizedBox(
                        height: 20.0
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(()=>insurance());
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
                labelText: tRegisterLabel1,
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
                labelText: tInpAddress,
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
                labelText: tRegisterLabel5,
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
                labelText: tInpRelationship,
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
    );
  }
}



