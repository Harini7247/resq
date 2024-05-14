import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';
import 'package:resq/src/features/authentication/screens/get_started/get_started.dart';

class register extends StatelessWidget {
  const register({super.key});

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
                              Get.to(()=>getStarted);
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
                      tLetsGet,
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        color: tSecondaryColor1,
                        fontWeight: FontWeight.w800,
                        fontSize:tHeadingSize,
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
            height: tRegisterFormHeight,
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
                  color: tSecondaryColor3,
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
          Row(
            children: [
              SizedBox(
                width: 127.0,
                height: 80.0,
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
                    labelText: tRegisterLabel2,
                    labelStyle: const TextStyle(
                      fontSize: tTextSize,
                      color: tSecondaryColor3,
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
                width: 214.0,
                height: 80.0,
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
                    labelText: tRegisterLabel3,
                    labelStyle: const TextStyle(
                      fontSize: tTextSize,
                      color: tSecondaryColor3,
                      fontWeight: FontWeight.w500,
                    ),
                    prefixIcon: const Icon(
                      Icons.calendar_month,
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
            ],
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
                labelText: tRegisterLabel4,
                labelStyle: const TextStyle(
                  fontSize: tTextSize,
                  color: tSecondaryColor3,
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
                  color: tSecondaryColor3,
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
                labelText: tRegisterLabel6,
                labelStyle: const TextStyle(
                  fontSize: tTextSize,
                  color: tSecondaryColor3,
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
                    labelText: tRegisterLabel7,
                    labelStyle: const TextStyle(
                      fontSize: tTextSize,
                      color: tSecondaryColor3,
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
                width: 179.0,
                height: 60.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: tPrimaryColor,
                    labelText: tRegisterLabel8,
                    labelStyle: const TextStyle(
                      fontSize: tTextSize,
                      color: tSecondaryColor3,
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

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          tNext,
          style:TextStyle(
            color:tSecondaryColor1,
            fontSize:tContentSize,
            fontWeight:FontWeight.w600,
          ),
        ),
        Icon(Icons.keyboard_arrow_right_outlined,
          size:tSizeSmdium,
          color:tSecondaryColor1,
        )
      ],
    );
  }
}
