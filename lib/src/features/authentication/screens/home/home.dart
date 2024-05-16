import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resq/src/common_widgets/bottomNavigationBar.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/imagestrings.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                children:[
                  Container(
                    height:tHomeContainerHeight,
                    width:tHomeContainerWidth,
                    color:tGreyColor,
                    child: Content(),
                  ),
                  vehiclesOnRun(),
                  View(),
                  manualAlert(),
                ]
            )
        ),
        bottomNavigationBar: BNB()
    );
  }
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,20.0,0,0),
      child: Row(
          children:[
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0,50.0,0,0),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  Text(
                      tWelcome,
                      style:TextStyle(
                        color:tSecondaryColor2,
                        fontWeight:FontWeight.w800,
                        fontSize:tHeadingSize,
                      )
                  ),
                  Text(
                      twhatsup,
                      style:TextStyle(
                        color:tSecondaryColor2,
                        fontWeight:FontWeight.w600,
                        fontSize:tSubSubHeadingSize,
                      )
                  )
                ],
              ),
            ),
            SizedBox(
                width:20.0
            ),
            Image.asset(
              tPersonIcon,
              height:tSizeLarge,
              width:tSizeLarge,
            ),
          ]
      ),
    );
  }
}

class vehiclesOnRun extends StatelessWidget {
  const vehiclesOnRun({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0,20.0,0,0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(
                tHeading1,
                style:TextStyle(
                  color:tSecondaryColor2,
                  fontWeight:FontWeight.w800,
                  fontSize:tSubSubHeadingSize,
                )
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0,10.0,30.0,10.0),
              child: Row(
                  children:[
                    Image.asset(
                      tCarImage,
                      height:tSizeLarge,
                      width:tSizeLarge,
                    ),
                    SizedBox(
                      width:40.0,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text(
                              tVehicleNo1,
                              style:TextStyle(
                                color:tSecondaryColor2,
                                fontWeight:FontWeight.w800,
                                fontSize:tTextSize,
                              )
                          ),
                          Text(
                              tVehicleModel1,
                              style:TextStyle(
                                color:tSecondaryColor3,
                                fontWeight:FontWeight.w600,
                                fontSize:tTextSize,
                              )
                          ),
                          GestureDetector(
                            onTap:(){
                            },
                            child: Text(
                                tViewMore,
                                style:TextStyle(
                                  color:tSecondaryColor1,
                                  fontSize:tSubTextSize,
                                  fontWeight:FontWeight.w500,
                                )
                            ),
                          )
                        ]
                    )
                  ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0,10.0,30.0,10.0),
              child: Row(
                  children:[
                    Image.asset(
                      tCarImage,
                      height:tSizeLarge,
                      width:tSizeLarge,
                    ),
                    SizedBox(
                      width:40.0,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text(
                              tVehicleNo2,
                              style:TextStyle(
                                color:tSecondaryColor2,
                                fontWeight:FontWeight.w800,
                                fontSize:24.0,
                              )
                          ),
                          Text(
                              tVehicleModel2,
                              style:TextStyle(
                                color:tSecondaryColor3,
                                fontWeight:FontWeight.w600,
                                fontSize:tTextSize,
                              )
                          ),
                          GestureDetector(
                            onTap:(){
                            },
                            child: Text(
                                tViewMore,
                                style:TextStyle(
                                  color:tSecondaryColor1,
                                  fontSize:tSubTextSize,
                                  fontWeight:FontWeight.w500,
                                )
                            ),
                          )
                        ]
                    )
                  ]
              ),
            )
          ]
      ),
    );
  }
}

class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0,20.0,40.0,20.0),
      child: Row(
          children:[
            Column(
                children:[
                  Image.asset(
                    tPoliceIcon,
                    height:tSizeLarge,
                    width:tSizeLarge,
                  ),
                  Container(
                    width:tHomeLowerContainerWidth,
                    child: Text(
                      textAlign: TextAlign.center,
                      tViewPolice,
                      style:TextStyle(
                        fontSize:tTextSize,
                        fontWeight:FontWeight.w600,
                      ),
                    ),
                  )
                ]
            ),
            Column(
                children:[
                  Image.asset(
                    tHospIcon,
                    height:tSizeLarge,
                    width:tSizeLarge,
                  ),
                  Container(
                    width:tHomeLowerContainerWidth,
                    child: Text(
                      textAlign: TextAlign.center,
                      tViewHosp,
                      style:TextStyle(
                        fontSize:tTextSize,
                        fontWeight:FontWeight.w600,
                      ),
                    ),
                  )
                ]
            )
          ]
      ),
    );
  }
}

class manualAlert extends StatelessWidget {
  const manualAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:(){},
        child: Text(tAlertManually,
            style: TextStyle(
              fontSize:tSubSubHeadingSize,
            )
        ),
        style: ButtonStyle(
          backgroundColor:MaterialStateProperty.all<Color>(tSecondaryColor1),
          foregroundColor:MaterialStateProperty.all<Color>(tPrimaryColor),
          padding:MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0)),
        )
    );
  }
}

