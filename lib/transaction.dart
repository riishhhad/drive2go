import 'package:drive2go/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class transaction extends StatefulWidget {
  const transaction({super.key});

  @override
  State<transaction> createState() => _transactionState();
}

class _transactionState extends State<transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      width: 430,
      height: 932,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.09, 1.00),
          end: Alignment(0.09, -1),
          colors: [Colors.black, Color(0xFF272C2F), Color(0xFF525E64), Color(0xFF3B4F58), Color(0xFF01293B)],
        ),
      ),child: Padding(
        padding:  EdgeInsets.only(top: 93.h),
        child: Column(
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 25.w,
              ),
              GestureDetector(onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>product()));},
                child: Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 85.w,
              ),
              Text(
                'Renting Details',
                style: TextStyle(
                  color: Color(0xFFF7F5F2),
                  fontSize: 24.w,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.24.w,
                ),
              ),

            ],
                ),SizedBox(height: 49.h,),
            Container(
      width: 391.w,
      height: 129.h,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.84, -0.54),
          end: Alignment(-0.84, 0.54),
          colors: [ Color(0xFF272C2F),
            Color(0xFF525E64),
            Color(0xFF3B4F58),
            Color(0xFF01293B)],
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: Color(0xFF58606A)),
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),child:
            Row(
                  children: [
                    Image.asset('assets/rangeover.png'),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
            width: 87.w,
            height: 89.h,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Car name',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF7F5F2),
                    fontSize: 16.w,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'James Robert',
                  style: TextStyle(
                    color: Color(0xFFF7F5F2),
                    fontSize: 15.w,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  '2022',
                  style: TextStyle(
                    color: Color(0xFFF7F5F2),
                    fontSize: 12.w,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  '1000 km',
                  style: TextStyle(
                    color: Color(0xFFF7F5F2),
                    fontSize: 12.w,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
                      ),
                    ),
                  ],
                ),
    ),Row(children: [
      Icon(CupertinoIcons.calendar)
            ],)
          ],
        ),
      ),
    ),
    );
  }
}
