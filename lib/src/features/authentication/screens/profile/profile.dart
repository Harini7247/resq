import 'package:flutter/material.dart';
import 'package:resq/repository/authentication_repository/authentication_repository.dart';
import 'package:resq/src/common_widgets/bottomNavigationBar.dart';
import 'package:resq/src/constants/colors.dart';
import 'package:resq/src/constants/imagestrings.dart';
import 'package:resq/src/constants/size.dart';
import 'package:resq/src/constants/text_strings.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:[
                        GestureDetector(
                          onTap:(){
                            AuthenticationRepository.instance.logout();
                          },
                          child: Icon(
                            Icons.logout_outlined,
                            size:tSizeMedium,
                          ),
                        )
                      ]
                  ),
                  Image.asset(
                      tPersonIcon,
                      height:tSizeVeryLarge,
                      width:tSizeVeryLarge
                  ),
                  SizedBox(
                      height:10.0
                  ),
                  Text(
                      tProfileName,
                      style:TextStyle(
                        fontSize:tHeadingSize,
                        fontWeight:FontWeight.w700,
                      )
                  ),
                  SizedBox(
                    height:16.0,
                  ),
                  Expanded(
                      child:Options()
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BNB()
    );
  }
}

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:tProfileContainerHeight,
      child: GridView.count(
          shrinkWrap:true,
          mainAxisSpacing:20.0,
          crossAxisSpacing:20.0,
          crossAxisCount:2,
          children:<Widget>[
            Container(
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(20.0),
                  color:tColor1,
                ),
                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Icon(
                        Icons.person_2,
                        color:tPrimaryColor,
                        size:tSizeMedium,
                      ),
                      SizedBox(
                          height:8.0
                      ),
                      SizedBox(
                        width:100.0,
                        child: Text(
                            tOption1,
                            textAlign:TextAlign.center,
                            style:TextStyle(
                              color:tPrimaryColor,
                              fontSize:tTextSize,
                            )
                        ),
                      )
                    ]
                )
            ),
            Container(
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(20.0),
                  color:tColor2,
                ),
                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Icon(
                        Icons.house_rounded,
                        color:tPrimaryColor,
                        size:tSizeMedium,
                      ),
                      SizedBox(
                          height:8.0
                      ),
                      SizedBox(
                        width:100.0,
                        child: Text(
                            tOption2,
                            textAlign:TextAlign.center,
                            style:TextStyle(
                              color:tPrimaryColor,
                              fontSize:tTextSize,
                            )
                        ),
                      )
                    ]
                )
            ),
            Container(
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(20.0),
                  color:tColor3,
                ),

                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Icon(
                        Icons.receipt_long_rounded,
                        color:tPrimaryColor,
                        size:tSizeMedium,
                      ),
                      SizedBox(
                          height:8.0
                      ),
                      SizedBox(
                        width:100.0,
                        child: Text(
                            tOption3,
                            textAlign:TextAlign.center,
                            style:TextStyle(
                              color:tPrimaryColor,
                              fontSize:tTextSize,
                            )
                        ),
                      )
                    ]
                )
            ),
            Container(
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(20.0),
                  color:tColor4,
                ),

                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Icon(
                        Icons.contacts_rounded,
                        color:tPrimaryColor,
                        size:tSizeMedium,
                      ),
                      SizedBox(
                          height:8.0
                      ),
                      SizedBox(
                        width:140.0,
                        child: Text(
                            tOption4,
                            textAlign:TextAlign.center,
                            style:TextStyle(
                              color:tPrimaryColor,
                              fontSize:tTextSize,
                            )
                        ),
                      )
                    ]
                )
            ),Container(
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(20.0),
                  color:tColor5,
                ),

                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Icon(
                        Icons.verified_rounded,
                        color:tPrimaryColor,
                        size:tSizeMedium,
                      ),
                      SizedBox(
                          height:8.0
                      ),
                      SizedBox(
                        width:140.0,
                        child: Text(
                            tOption5,
                            textAlign:TextAlign.center,
                            style:TextStyle(
                              color:tPrimaryColor,
                              fontSize:tTextSize,
                            )
                        ),
                      )
                    ]
                )
            ),Container(
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(20.0),
                  color:tColor6,
                ),

                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Icon(
                        Icons.car_crash_rounded,
                        color:tPrimaryColor,
                        size:tSizeMedium,
                      ),
                      SizedBox(
                          height:8.0
                      ),
                      SizedBox(
                        width:100.0,
                        child: Text(
                            tOption6,
                            textAlign:TextAlign.center,
                            style:TextStyle(
                              color:tPrimaryColor,
                              fontSize:tTextSize,
                            )
                        ),
                      )
                    ]
                )
            ),
          ]
      ),
    );
  }
}

