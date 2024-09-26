import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Column(
      children: [
        Container(
          width: 430.w,
          height: 932.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.09, 1.00),
              end: Alignment(0.09, -1),
              colors: [
                Colors.black,
                Color(0xFF272C2F),
                Color(0xFF525E64),
                Color(0xFF3B4F58),
                Color(0xFF01293B)
              ],
            ),
          ),child: SingleChildScrollView(
                child:
                Column(
                  children: [
                    SizedBox( height: 80.h,),
                 Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 35.w,top: 19.h),
                          child: Container(
                            width: 74.w,
                            height: 74.h,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/profile.png"),
                                fit: BoxFit.cover,
                              ),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                            ),
                          ),
                        ),Padding(
                          padding:  EdgeInsets.only(left: 18.w),
                          child: Column(
                            children: [
                              Text(
                                'James Robert',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.w,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),SizedBox(height: 12.h,),
                              Text(
                                'Individual profile',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.w,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ), Padding(
                          padding:  EdgeInsets.only(left:  140.w,),
                          child: Icon(Icons.more_vert,color: Colors.white,),
                        ),
                      ],
                    ),SizedBox(height: 11.h,),
                    Column(
                      children: [
                        SizedBox(width: 318.w,
                            child: Divider(color: Color(0xFFB5B1B1),thickness: 1,)),
                      ],
                    ),Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 33.w,top: 23.h),
                          child: Text(
                            'Account settings',
                            style: TextStyle(
                              color: Color(0xFF929191),
                              fontSize: 12.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),SizedBox(height: 19.h,),
                    Row(
                      children: [
                        SizedBox(width: 44.w,),
                        Icon(BootstrapIcons.gear,color: Colors.white,),
                        SizedBox(width: 22.w,),
                        Text(
                          'Account Settings',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.w,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),  Column(
                      children: [
                        SizedBox(width: 370.w,
                            child: Divider(color: Color(0xFFB5B1B1),thickness: 0.5,)),
                      ],
                    ),SizedBox(height: 19.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 44.w),
                      child: Row(
                        children: [
                          Icon(BootstrapIcons.file_check,color: Colors.white,),
                    
                      SizedBox(width: 22.w,),
                          Text(
                            'Request Verification',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                                      ],
                                    ),
                    ),Column(
                      children: [
                        SizedBox(width: 370.w,
                            child: Divider(color: Color(0xFFB5B1B1),thickness: 0.5,)),
                      ],
                    ),SizedBox(height: 19.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 44.w),
                      child: Row(children: [
                        Icon(BootstrapIcons.pencil_square,color: Colors.white,),
                        SizedBox(width: 22.w,),
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.w,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],),
                    ), Column(
                      children: [
                        SizedBox(width: 370.w,
                            child: Divider(color: Color(0xFFB5B1B1),thickness: 0.5,)),
                      ],
                    ),SizedBox(height: 19.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 44.w),
                      child: Row(children: [
                        Icon(BootstrapIcons.arrow_up_right,color: Colors.white,),
                        SizedBox(width: 22.w,),
                        Text(
                          'Manage Outgoing Request',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.w,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],),
                    ), Column(
                      children: [
                        SizedBox(width: 370.w,
                            child: Divider(color: Color(0xFFB5B1B1),thickness: 0.5,)),
                      ],
                    ),Padding(
                      padding:  EdgeInsets.only(left: 25.w,top: 23.h),
                      child: Row(
                        children: [
                          Text(
                            'General',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),SizedBox(height: 19.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 44.w),
                      child: Row(children: [
                        Icon(BootstrapIcons.globe,color: Colors.white,),
                        SizedBox(width: 22.w,),
                        Text(
                          'Manage Outgoing Request',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.w,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],),
                    ), Column(
                      children: [
                        SizedBox(width: 370.w,
                            child: Divider(color: Color(0xFFB5B1B1),thickness: 0.5,)),
                      ],
                    ),SizedBox(height: 23.44.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 25.w),
                      child: Row(
                        children: [
                          Text(
                            'Support',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),SizedBox(height: 19.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 44.w),
                      child: Row(children: [
                        Icon(BootstrapIcons.question_circle,color: Colors.white,),
                        SizedBox(width: 22.w,),
                        Text(
                          'Help',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.w,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],),
                    ),Column(
                      children: [
                        SizedBox(width: 370.w,
                            child: Divider(color: Color(0xFFB5B1B1),thickness: 0.5,)),
                      ],
                    ),SizedBox(height: 19.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 44.w),
                      child: Row(children: [
                        Icon(BootstrapIcons.hand_thumbs_up,color: Colors.white,),
                        SizedBox(width: 22.w,),
                        Text(
                          'Feedback',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.w,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],),
                    ),Column(
                      children: [
                        SizedBox(width: 370.w,
                            child: Divider(color: Color(0xFFB5B1B1),thickness: 0.5,)),
                      ],
                    ),SizedBox(height: 19.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 44.w),
                      child: Row(children: [
                        Icon(BootstrapIcons.info_circle,color: Colors.white,),
                        SizedBox(width: 22.w,),
                        Text(
                          'Request a feature',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.w,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],),
                    ),SizedBox(height: 19.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 44.w),
                      child: Row(children: [
                        Icon(BootstrapIcons.share,color: Colors.white,),
                        SizedBox(width: 22.w,),
                        Text(
                          'Share this App',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.w,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],),
                    ),Column(
                      children: [
                        SizedBox(width: 370.w,
                            child: Divider(color: Color(0xFFB5B1B1),thickness: 0.5,)),
                      ],
                    ),SizedBox(height: 19.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 44.w),
                      child: Row(children: [
                        Icon(BootstrapIcons.google_play,color: Colors.white,),
                        SizedBox(width: 22.w,),
                        Text(
                          'Rate on Google Play',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.w,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],),
                    ),Column(
                      children: [
                        SizedBox(width: 370.w,
                            child: Divider(color: Color(0xFFB5B1B1),thickness: 0.5,)),
                      ],
                    ),SizedBox(height: 23.44.h,),
      Padding(
        padding:  EdgeInsets.only(left: 25.w),
        child: Row(
          children: [
            Text(
              'Support',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.w,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
            ),
                  ],
                        ),
              ),SizedBox(height: 19.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 44.w),
                      child: Row(children: [
                        Icon(CupertinoIcons.lock,color: Colors.white,),
                        SizedBox(width: 22.w,),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 15.w,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],),
                    ),Column(
                      children: [
                        SizedBox(width: 370.w,
                            child: Divider(color: Color(0xFFB5B1B1),thickness: 0.5,)),
                      ],
                    ),SizedBox(height: 19.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 44.w),
                      child: Row(children: [
                        Icon(CupertinoIcons.shield,color: Colors.white,),
                        SizedBox(width: 22.w,),
                        Text(
                          'Terms and Conditions',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.w,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,

                          ),
                        )
                      ],),
                    ),Column(
                      children: [
                        SizedBox(width: 370.w,
                            child: Divider(color: Color(0xFFB5B1B1),thickness: 0.5,)),
                      ],
                    ),SizedBox(height: 56.h,),
                    Container(
                      width: 339.w,
                      height: 56.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      ),child:Center(
                        child: Text(
                        'Log Out',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.w,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,

                        ),
                                            ),
                      ) ,
                    ),SizedBox(height: 160.h,)

       ]),
    ),
    ),
    ]),
    );
  }
}
