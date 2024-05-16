import 'package:flutter/material.dart';
import 'package:resq/src/common_widgets/bottomNavigationBar.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/imagestrings.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
              children:[
                Container(
                  padding:EdgeInsets.fromLTRB(30.0,50.0,30.0,30.0),
                  width:tHomeContainerWidth,
                  color:tGreyColor,
                  child: Text(
                      tContactText,
                      style:TextStyle(
                        color:tSecondaryColor1,
                        fontWeight:FontWeight.w700,
                        fontSize:tSubHeadingSize,
                      )
                  ),
                ),
                Contacts(),
              ]
          )
      ),
      bottomNavigationBar: BNB(),
    );
  }
}

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0,20.0,20.0,10.0),
      child: Column(
          children:[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    children:[
                      Image.asset(
                        tManIcon,
                        height:tSizeLarge,
                        width:tSizeLarge,
                      ),
                      SizedBox(
                          width:20.0
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text(
                                tContactName1,
                                style:TextStyle(
                                  fontSize:tSubSubHeadingSize,
                                  fontWeight:FontWeight.w700,
                                )
                            ),
                            Text(
                                tContactPhNo1,
                                style:TextStyle(
                                  fontSize:tTextSize,
                                  fontWeight:FontWeight.w500,
                                )
                            ),
                            Text(
                                tContactRelation1,
                                style:TextStyle(
                                  fontSize:tTextSize,
                                  fontWeight:FontWeight.w600,
                                )
                            )
                          ]
                      )
                    ]
                ),
                SizedBox(
                    height:8.0
                ),
                Text(
                    tContactOccupation1,
                    textAlign:TextAlign.left,
                    style:TextStyle(
                      fontSize:tContentSize,
                      fontWeight:FontWeight.w600,
                    )
                ),
                SizedBox(
                    height:5.0
                ),
                Text(
                    tCallImm,
                    textAlign:TextAlign.left,
                    style:TextStyle(
                      color:tSecondaryColor1,
                      fontSize:tTextSize,
                      fontWeight:FontWeight.w600,
                    )
                ),
                SizedBox(
                    height:5.0
                ),
                Text(
                    tShareLoc,
                    textAlign:TextAlign.left,
                    style:TextStyle(
                      color:tSecondaryColor1,
                      fontSize:tTextSize,
                      fontWeight:FontWeight.w600,
                    )
                )
              ],
            ),
            SizedBox(
                height:20.0
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    children:[
                      Image.asset(
                        tWomanIcon,
                        height:tSizeLarge,
                        width:tSizeLarge,
                      ),
                      SizedBox(
                          width:20.0
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text(
                                tContactName2,
                                style:TextStyle(
                                  fontSize:tSubSubHeadingSize,
                                  fontWeight:FontWeight.w700,
                                )
                            ),
                            Text(
                                tContactPhNo2,
                                style:TextStyle(
                                  fontSize:tTextSize,
                                  fontWeight:FontWeight.w500,
                                )
                            ),
                            Text(
                                tContactRelation2,
                                style:TextStyle(
                                  fontSize:tTextSize,
                                  fontWeight:FontWeight.w600,
                                )
                            )
                          ]
                      )
                    ]
                ),
                SizedBox(
                    height:8.0
                ),
                Text(
                    tContactOccupation2,
                    textAlign:TextAlign.left,
                    style:TextStyle(
                      fontSize:tContentSize,
                      fontWeight:FontWeight.w600,
                    )
                ),
                SizedBox(
                    height:5.0
                ),
                Text(
                    tCallImm,
                    textAlign:TextAlign.left,
                    style:TextStyle(
                      color:tSecondaryColor1,
                      fontSize:tTextSize,
                      fontWeight:FontWeight.w600,
                    )
                ),
                SizedBox(
                    height:5.0
                ),
                Text(
                    tShareLoc,
                    textAlign:TextAlign.left,
                    style:TextStyle(
                      color:tSecondaryColor1,
                      fontSize:tTextSize,
                      fontWeight:FontWeight.w600,
                    )
                )
              ],
            ),
          ]
      ),
    );
  }
}

