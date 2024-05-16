import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';
import 'package:resq/src/features/authentication/screens/home/home.dart';
import 'package:resq/src/features/authentication/screens/inputs/vehicle_input.dart';

class confirm extends StatelessWidget {
  const confirm({super.key});

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
                              Get.to(()=>vehicleInput());
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
                      tConfirmText,
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
                    CheckBox(),
                    SizedBox(
                        height:20.0
                    ),
                    GestureDetector(
                      onHorizontalDragUpdate: (details) {
                        if (details.delta.dx<0){
                          Get.to(()=>Home());
                        }
                      },
                      child:Swipe(),
                    ),
                    SizedBox(
                      height:20.0,
                    ),
                    Text(
                        tConfirmWelcomeText,
                        textAlign:TextAlign.center,
                        style:TextStyle(
                          color:tSecondaryColor1,
                          fontSize:tSubTextSize,
                          fontWeight:FontWeight.w500,
                        )
                    )
                  ],
                ),
              ),
            )
        )
    );
  }
}

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            children:[
              Checkbox(
                  value:_isChecked,
                  onChanged:(newValue){
                    setState((){
                      _isChecked=newValue??false;
                    });
                  }
              ),
              Flexible(
                child: Text(
                    tCheckboxText,
                    textAlign:TextAlign.left,
                    overflow: TextOverflow.visible,
                    style:TextStyle(
                      fontSize:tSubSubTextSize,
                      fontWeight:FontWeight.w400,
                      color:tSecondaryColor2,
                    )
                ),
              )
            ]
        ),
        SizedBox(
            height:10.0
        ),
        Row(
            children:[
              Checkbox(
                  value:_isChecked,
                  onChanged:(newValue){
                    setState((){
                      _isChecked=newValue??false;
                    });
                  }
              ),
              Text(
                  tImNotARobot,
                  textAlign:TextAlign.left,
                  style:TextStyle(
                    fontSize:tSubSubTextSize,
                    fontWeight:FontWeight.w400,
                    color:tSecondaryColor2,
                  )
              )
            ]
        ),
      ],
    );
  }
}

class Swipe extends StatelessWidget {
  const Swipe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:300.0,
      child: ElevatedButton(
          style:ButtonStyle(
              backgroundColor:MaterialStateProperty.all<Color>(tSecondaryColor1),
              foregroundColor:MaterialStateProperty.all<Color>(tPrimaryColor),
              padding:MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0))
          ),
          onPressed:(){},
          child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:[
                Text(
                  tSwipeButtonText,
                  style:TextStyle(
                    color:tPrimaryColor,
                    fontSize:tContentSize,
                    fontWeight:FontWeight.w600,
                  ),
                ),
                Icon(Icons.keyboard_arrow_right_outlined,
                  size:tContentSize,
                  color:tPrimaryColor,
                )
              ]
          )
      ),
    );
  }
}

