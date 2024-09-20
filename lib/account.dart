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
          color: Colors.white
              ),child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 26.w,top: 19.h),
                          child: Icon(CupertinoIcons.back,color: Colors.black,),
                        ),Padding(
                          padding:  EdgeInsets.only(right: 18.w,top: 19.h),
                          child: Icon(Icons.more_vert,color: Colors.black,),
                        ),
                      ],
                    ),Row(
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
                                  color: Colors.black,
                                  fontSize: 16.w,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),SizedBox(height: 12.h,),
                              Text(
                                'Individual profile',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.w,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
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
                        Icon(BootstrapIcons.gear,color: Colors.black,),
                        SizedBox(width: 22.w,),
                        Text(
                          'Account Settings',
                          style: TextStyle(
                            color: Color(0xFF000B17),
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
                          Icon(BootstrapIcons.file_check,color: Colors.black,),
                    
                      SizedBox(width: 22.w,),
                          Text(
                            'Request Verification',
                            style: TextStyle(
                              color: Color(0xFF000B17),
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
                        Icon(BootstrapIcons.pencil_square),
                        SizedBox(width: 22.w,),
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: Color(0xFF000B17),
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
                        Icon(BootstrapIcons.arrow_up_right),
                        SizedBox(width: 22.w,),
                        Text(
                          'Manage Outgoing Request',
                          style: TextStyle(
                            color: Color(0xFF000B17),
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
                              color: Color(0xFF929191),
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
                        Icon(BootstrapIcons.globe),
                        SizedBox(width: 22.w,),
                        Text(
                          'Manage Outgoing Request',
                          style: TextStyle(
                            color: Color(0xFF000B17),
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
                              color: Color(0xFF929191),
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
                        Icon(BootstrapIcons.question_circle),
                        SizedBox(width: 22.w,),
                        Text(
                          'Help',
                          style: TextStyle(
                            color: Color(0xFF000B17),
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
                        Icon(BootstrapIcons.hand_thumbs_up),
                        SizedBox(width: 22.w,),
                        Text(
                          'Feedback',
                          style: TextStyle(
                            color: Color(0xFF000B17),
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
                        Icon(BootstrapIcons.info_circle),
                        SizedBox(width: 22.w,),
                        Text(
                          'Request a feature',
                          style: TextStyle(
                            color: Color(0xFF000B17),
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
                        Icon(BootstrapIcons.share),
                        SizedBox(width: 22.w,),
                        Text(
                          'Share this App',
                          style: TextStyle(
                            color: Color(0xFF000B17),
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
                        Icon(BootstrapIcons.google_play),
                        SizedBox(width: 22.w,),
                        Text(
                          'Rate on Google Play',
                          style: TextStyle(
                            color: Color(0xFF000B17),
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
                color: Color(0xFF929191),
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
                        Icon(CupertinoIcons.lock),
                        SizedBox(width: 22.w,),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Color(0xFF000B17),
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
                        Icon(CupertinoIcons.shield),
                        SizedBox(width: 22.w,),
                        Text(
                          'Terms and Conditions',
                          style: TextStyle(
                            color: Color(0xFF000B17),
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
                      width: 339,
                      height: 56,
                      decoration: ShapeDecoration(
                        color: Color(0xFF000B17),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      ),child:Center(
                        child: Text(
                        'Log Out',
                        style: TextStyle(
                          color: Color(0xFFF7F5F2),
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
