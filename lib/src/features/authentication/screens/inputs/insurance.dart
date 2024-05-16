import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resq/src/common_widgets/next.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/imagestrings.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';
import 'package:resq/src/features/authentication/screens/inputs/emergency_contact_2.dart';
import 'package:resq/src/features/authentication/screens/inputs/vehicle_input.dart';

class insurance extends StatelessWidget {
  const insurance({super.key});

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
                              Get.to(()=>emergencyContact2());
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
                      tInpUploadIns,
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
                      tInsuranceIns,
                      textAlign:TextAlign.center,
                      style:TextStyle(
                        fontSize:tTextSize,
                        color:tSecondaryColor2,
                      ),
                    ),
                    SizedBox(
                        height:40.0
                    ),
                    Upload(),
                    SizedBox(
                        height:30.0
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(vehicleInput());
                      },
                      child: Next(),
                    ),
                    SizedBox(
                      height:40.0,
                    ),
                    Text(
                        tSkip,
                        textAlign: TextAlign.center,
                        style:TextStyle(
                          color:tSecondaryColor1,
                          fontWeight:FontWeight.w500,
                          fontSize:tTextSize,
                        )
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


