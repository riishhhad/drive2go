import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Container(
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
    ),child:Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18.w),
      child: Column(
        children: [
          SizedBox(height: 37.h,),
          Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Column(
                children: [
                  Container(
                    width: 179.w,
                    height: 55.h,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'location',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFF7F5F2),
                            fontSize: 20.sp,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                          ),
                        ),SizedBox(height: 7.h,),
                        Text(
                          'Malappuram , Kerala',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFF7F5F2),
                            fontSize: 20.sp,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(width: 50.w,
                  child: Image.asset('assets/notification.png')),
            ],
          ),
          SizedBox(height: 19.h,),
          Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 292.w,
                height: 48.h,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.84, -0.54),
                    end: Alignment(-0.84, 0.54),
                    colors: [Colors.white, Colors.white.withOpacity(0)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Color(0xFF58606A)),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(width: 50.w,
                  child: Image.asset('assets/menu.png')),
            ],
          )
        ],
      ),
    ),
    ),
    );
  }
}
