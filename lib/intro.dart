import 'package:drive2go/sign%20in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class intro extends StatefulWidget {
  const intro({super.key});

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(
      children: [
        Container(
          width: 622,
          height: 932,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/intro.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Image.asset("assets/intro2.png"),
        ),SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 190.h,),
            Center(
                child: Text(
                  'Wheels You Needed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.sp,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),SizedBox(height:  36.h,),
                SizedBox(
                width: 313.w,
                child: Text(
                  'Premium and prestige daily rental car, experience the thrill at a lower price.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF8493A3),
                    fontSize: 16.sp,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.36.w,
                  ),
                ),
                ),SizedBox( height: 446.h,),
            GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>signin()));},
              child: Container(
                width: 332,
                height: 64,
                decoration: ShapeDecoration(
                  color: Color(0xBC001024),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.w, color: Colors.white60),
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                ),
                child:Center(
                  child: Text(
                  'Let’s Go',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.70.w,
                  ),
                  ),
                ) ,
              ),
            ),
          ],),
        )
      ],
    ),
    );
  }
}
