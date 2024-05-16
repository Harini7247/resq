import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resq/src/common_widgets/bottomNavigationBar.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/imagestrings.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';
import 'package:resq/src/features/authentication/screens/home/home.dart';

class vehicle1 extends StatelessWidget {
  const vehicle1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children:[
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0,60.0,20.0,0),
                child: Row(
                    children:[
                      GestureDetector(
                        onTap:(){
                          Get.to(()=>Home());
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color:tSecondaryColor1,
                          size:tSizeMedium,
                        ),
                      ),
                      SizedBox(
                          width:60.0
                      ),
                      Text(
                          tCarDetails,
                          style:TextStyle(
                            color:tSecondaryColor1,
                            fontWeight:FontWeight.w700,
                            fontSize:tSubSubHeadingSize,
                          )
                      )
                    ]
                ),
              ),
              SizedBox(
                  height:20.0
              ),
              Container(
                color:tGreyColor,
                height:360.0,
                width:tHomeContainerWidth,
                child:Details(),
              ),
              CurrentLocation(),
            ]
        ),
      ),
      bottomNavigationBar: BNB(),
    );
  }
}

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
          children:[
            Row(
                children:[
                  SizedBox(
                    width:200.0,
                    child: Text(
                        textAlign:TextAlign.center,
                        tDetailLabel1,
                        style:TextStyle(
                          fontWeight:FontWeight.w600,
                          fontSize:tTextSize,
                        )
                    ),
                  ),
                  SizedBox(
                      width:10.0
                  ),
                  Text(
                      tVehicleNo1,
                      style:TextStyle(
                        fontWeight:FontWeight.w500,
                        fontSize:tTextSize,
                      )
                  )
                ]
            ),
            SizedBox(
              height:10.0,
            ),
            Row(
                children:[
                  SizedBox(
                    width:200.0,
                    child: Text(
                        tDetailLabel2,
                        textAlign:TextAlign.center,
                        style:TextStyle(
                          fontWeight:FontWeight.w600,
                          fontSize:tTextSize,
                        )
                    ),
                  ),
                  SizedBox(
                      width:10.0
                  ),
                  Text(
                      tProfileName,
                      style:TextStyle(
                        fontWeight:FontWeight.w500,
                        fontSize:tTextSize,
                      )
                  )
                ]
            ),
            SizedBox(
              height:10.0,
            ),
            Row(
                children:[
                  SizedBox(
                    width:200.0,
                    child: Text(
                        tDetailLabel3,
                        textAlign:TextAlign.center,
                        style:TextStyle(
                          fontWeight:FontWeight.w600,
                          fontSize:tTextSize,
                        )
                    ),
                  ),
                  SizedBox(
                      width:10.0
                  ),
                  Text(
                      tVehicleModel1,
                      style:TextStyle(
                        fontWeight:FontWeight.w500,
                        fontSize:tTextSize,
                      )
                  )
                ]
            ),
            SizedBox(
              height:10.0,
            ),
            Row(
                children:[
                  SizedBox(
                    width:200.0,
                    child: Text(
                        tDetailLabel4,
                        textAlign:TextAlign.center,
                        style:TextStyle(
                          fontWeight:FontWeight.w600,
                          fontSize:tTextSize,
                        )
                    ),
                  ),
                  SizedBox(
                      width:10.0
                  ),
                  Text(
                      tInsuranceName,
                      style:TextStyle(
                        fontWeight:FontWeight.w500,
                        fontSize:tTextSize,
                      )
                  )
                ]
            ),
            SizedBox(
              height:10.0,
            ),
            Row(
                children:[
                  SizedBox(
                    width:200.0,
                    child: Text(
                        tDetailLabel5,
                        textAlign:TextAlign.center,
                        style:TextStyle(
                          fontWeight:FontWeight.w600,
                          fontSize:tTextSize,
                        )
                    ),
                  ),
                  SizedBox(
                      width:10.0
                  ),
                  Text(
                      tInsuranceValidity,
                      style:TextStyle(
                        fontWeight:FontWeight.w500,
                        fontSize:tTextSize,
                      )
                  )
                ]
            ),
          ]
      ),
    );
  }
}

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Text(
                tCurrentLoc,
                textAlign:TextAlign.left,
                style:TextStyle(
                  fontWeight:FontWeight.w700,
                  fontSize:tContentSize,
                )
            ),
            SizedBox(
              height:8.0,
            ),
            Text(
                tLoc1,
                style:TextStyle(
                  fontSize:tSubTextSize,
                )
            ),
            Text(
                tLoc2,
                style:TextStyle(
                  fontSize:tSubTextSize,
                )
            ),
            SizedBox(
              height:10.0,
            ),
            Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[
                  Image.asset(
                    tMap1Image,
                    height:169.0,
                    width:297.0,
                  ),
                  GestureDetector(
                      onTap:(){},
                      child: Text(
                          tViewInMaps,
                          style:TextStyle(
                            color:tSecondaryColor1,
                            fontSize:tSubTextSize,
                            fontWeight:FontWeight.w700,
                          )
                      )
                  )
                ]
            ),
          ]
      ),
    );
  }
}

