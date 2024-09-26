import 'package:drive2go/Ui/product.dart';
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
      width: 430.w,
      height: 932.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.09, 1.00),
          end: Alignment(0.09, -1),
          colors: [Colors.black, Color(0xFF000C1B), Color(0xFF000C1B), Color(0xFF000C1B), Color(0xFF000C1B)],
        ),
      ),child: Padding(
        padding:  EdgeInsets.only(top: 93.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 25.w,
                ),
                GestureDetector(onTap: () {Navigator.of(context).pop(MaterialPageRoute(builder: (_)=>product()));},
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
                          width: 127.w,
                          height: 102.h,
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
              ),SizedBox(height: 42.h
                ,),
              Row(children: [
                SizedBox(width: 35.w,),
                Icon(CupertinoIcons.calendar,color: Colors.white,),SizedBox(width: 10.w
                  ,),
                Text(
                  'Select Date',
                  style: TextStyle(
                    color: Color(0xFFF7F5F2),
                    fontSize: 16.w,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],),SizedBox(height: 23.h
                ,),
              Row(
                children: [
                  SizedBox(width: 39.w,),
                  Container(
                    width: 148.w,
                    height: 55.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF627487)),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),SizedBox(width: 12.w,),
                  Icon(Icons.arrow_forward,color: Colors.white,),SizedBox(width: 12.w,),
                  Container(
                    width: 148.w,
                    height: 55.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF627487)),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ],
              ),SizedBox(height: 8.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
          
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 39.w),
                    child: Text(
                      'Pickup Date',
                      style: TextStyle(
                        color: Color(0xFF627487),
                        fontSize: 14.w,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),SizedBox(width: 133.w,),
                  Text(
                    'Return Date',
                    style: TextStyle(
                      color: Color(0xFF627487),
                      fontSize: 14.w,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ),SizedBox(width: 39.w,),
                ],
              ),SizedBox(height: 44.h,),
              Row(children: [
                SizedBox(width: 32.w,),
                Icon(Icons.location_on_outlined,color: Colors.white,),
                SizedBox(width: 10.w,),
                Text(
                  'Select Location',
                  style: TextStyle(
                    color: Color(0xFFF7F5F2),
                    fontSize: 16.w,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],),SizedBox(height: 22.h,),
              SizedBox(  width: 352.w,
                height: 55.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a search term',
                    suffixIcon: Icon(CupertinoIcons.map,color: Colors.white,)
                  ),
                ),
              ),SizedBox(height: 8.h,),
              Row(
                children: [
                  SizedBox(width: 39.w,),
                  Text(
                    'Pickup location',
                    style: TextStyle(
                      color: Color(0xFF627487),
                      fontSize: 14.w,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),SizedBox(height: 22.h,),
              SizedBox(  width: 352.w,
                height: 55.h,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a search term',
                      suffixIcon: Icon(CupertinoIcons.map,color: Colors.white,)
                  ),
                ),
              ),SizedBox(height: 8.h,),
              Row(
                children: [
                  SizedBox(width: 39.w,),
                  Text(
                    'Return location',
                    style: TextStyle(
                      color: Color(0xFF627487),
                      fontSize: 14.w,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),SizedBox(height: 41.h,),
              Row(
                children: [
                  SizedBox(width: 39.w,),
                  SizedBox( width: 24.w,
                      height: 24.h,
                      child: Image.asset('assets/cardpos.png')),
                  SizedBox(width: 10.w,),
                  Text(
                    'Payment Method',
                    style: TextStyle(
                      color: Color(0xFFF7F5F2),
                      fontSize: 16.w,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),SizedBox(height: 22.h,),
              SizedBox(  width: 352.w,
                height: 55.h,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText:
                        '**** **** ***5 6324',
                        hintStyle: TextStyle(
                          color: Color(0xFF627487),
                          fontSize: 16.w,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                        ),
                      prefixIcon: Icon(CupertinoIcons.creditcard,color: Colors.white,)
                  ),
                ),
              ),SizedBox(height: 22.h,),
              SizedBox(  width: 352.w,
                height: 55.h,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText:
                        'Cash',
                        hintStyle:  TextStyle(
                          color: Color(0xFF627487),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      prefixIcon: Icon(CupertinoIcons.money_dollar,color: Colors.white,)
                  ),
                ),
              ),SizedBox(height: 34.h,),
              Container(
                width: 430.w,
                height: 156.h,
                decoration: ShapeDecoration(
                  color: Color(0x82C2C2C2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                ),child:
              Padding(
                padding:  EdgeInsets.only(left: 28.w,top: 52.h),
                child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(width: 39.w,),
                          Text(
                            'RENTAL PRICE FOR ',
                            style: TextStyle(
                              color: Color(0xFF1F354D),
                              fontSize: 15.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                            ),
                          ),Text(
                            '14 Days - 1,12,000\$',
                            style: TextStyle(
                              color: Color(0xFFF7F5F2),
                              fontSize: 20,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          )
                        ],
                      ),SizedBox(width: 33.w,),
                      Container(
                        width: 161.w,
                        height: 50.h,
                        decoration: ShapeDecoration(
                          gradient: RadialGradient(
                            center: Alignment(0.70, 0.62),
                            radius: 0.01,
                            colors: [Color(0xFFFFB700), Color(0xFFFFF0C9), Color(0xFFFFDB81), Color(0xFFFFCE50), Color(0xFFD39906)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),child: Center(
                          child: Text(
                          'Pay Now ',
                          style: TextStyle(
                            color: Color(0xFFF7F5F2),
                            fontSize: 20.w,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                          ),
                                                ),
                        ),
                      )
                    ],
                  ),
              ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
