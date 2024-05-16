import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resq/src/common_widgets/next.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/imagestrings.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';
import 'package:resq/src/features/authentication/screens/inputs/confirm.dart';
import 'package:resq/src/features/authentication/screens/inputs/insurance.dart';

class vehicleInput extends StatelessWidget {
  const vehicleInput({super.key});

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
                              Get.to(()=>insurance());
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
                      tInpVehicle,
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
                    Upload(),
                    SizedBox(
                        height:30.0
                    ),
                    MyForm(),
                    SizedBox(
                        height:20.0
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(()=>vehicleInput());
                      },
                      child: add(),
                    ),
                    SizedBox(
                        height:10.0
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(()=>confirm());
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

class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width:238,
        height:186,
        decoration:BoxDecoration(
          border:Border.all(
            color:tSecondaryColor1,
            width:2.0,
          ),
          borderRadius:BorderRadius.circular(20.0),
        ),
        child: Column(
          children:[
            Image.asset(
              tUploadIcon,
              height:tSizeVeryLarge,
              width:tSizeVeryLarge,
            ),
            Text(
                tUploadFiles,
                style: TextStyle(
                  color:tSecondaryColor2,
                  fontSize:tTextSize,
                )
            ),
          ],
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
                labelText: tInpVehRegNum,
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
                labelText: tInpFullName,
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
                labelText: tInpBrandModel,
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
                labelText: tInpVehicleBoughtOn,
                labelStyle: const TextStyle(
                  fontSize: tTextSize,
                  color: tSecondaryColor2,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon:Icon(
                  Icons.calendar_month,
                  color:tSecondaryColor1,
                  size:tSizeSmall,
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

class add extends StatelessWidget {
  const add({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      tInpAdd,
      textAlign:TextAlign.center,
      style:TextStyle(
        color:tSecondaryColor1,
        fontSize:tContentSize,
        fontWeight:FontWeight.w600,
      ),
    );
  }
}

