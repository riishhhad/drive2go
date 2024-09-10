import 'package:carousel_slider/carousel_slider.dart';
import 'package:drive2go/buycar.dart';
import 'package:drive2go/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 93.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 25.w,
                    ),
                    GestureDetector(onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>buycar()));},
                      child: Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 85.w,
                    ),
                    Text(
                      'Audi R8 Coupe',
                      style: TextStyle(
                        color: Color(0xFFF7F5F2),
                        fontSize: 24.w,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.24.w,
                      ),
                    ),
                   
                  ],
                ),
              ),
              Container(
                child: CarouselSlider.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(  width: 430.w,
                        height: 313.h,
                        child: Image.asset('assets/car2.png'),
                      ), options:  CarouselOptions(
                  height: 400.h,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                ),
              ),Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 28.w),
                    child: Text(
                    'Audi R8 Coupé',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF7F5F2),
                      fontSize: 20.w,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                    ),
                                  ),
                  ),
                Padding(
                  padding:  EdgeInsets.only(right: 34.w),
                  child: Icon(Icons.favorite_border_outlined,color: Colors.white,),
                ),
              ],),Column(children: [
                Row(
                  children: [
                    SizedBox(width: 28.w,),
                    Icon(CupertinoIcons.star_fill,color: Colors.yellow,size: 15,),
                    SizedBox(width: 13.w,),
                    Text(
                      '4.8 Reviews',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF7F5F2),
                        fontSize: 16.w,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              ],),SizedBox(height: 39.h,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Padding(
                    padding: EdgeInsets.only(left: 28.w),
                    child: Text(
                      'Car Details',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.w,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),Padding(
                    padding:  EdgeInsets.only(right: 36.w),
                    child: Text(
                      'more',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF627487),
                        fontSize: 16.w,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),SizedBox(height: 23.h,),
              Row(
                children: [
                 SizedBox(width: 28.w,),
                  Container(
                    width: 180.w,
                    height: 58.h,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: 180.w,
                            height: 58.h,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.84, -0.54),
                                end: Alignment(-0.84, 0.54),
                                colors: [Colors.white, Colors.white.withOpacity(0)],
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFF58606A)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15.w,
                          top: 18.h,
                          child: Container(
                            width: 22.w,
                            height: 22.h,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Icon(Icons.local_gas_station,color: Colors.white,),
                          ),
                        ),
                        Positioned(
                          left: 52.w,
                          top: 10.h,
                          child: Text(
                            'Tank size',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFA7B0BB),
                              fontSize: 12.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 52.w,
                          top: 27.h,
                          child: Text(
                            '74 liters',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), SizedBox(width: 20.w,),
                  Container(
                    width: 180.w,
                    height: 58.h,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: 180,
                            height: 58,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.84, -0.54),
                                end: Alignment(-0.84, 0.54),
                                colors: [Colors.white, Colors.white.withOpacity(0)],
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFF58606A)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15.w,
                          top: 18.h,
                          child: Container(
                            width: 22.w,
                            height: 22.h,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Image.asset('assets/gearbox.png'),
                          ),
                        ),
                        Positioned(
                          left: 52.w,
                          top: 10.h,
                          child: Text(
                            'Tank size',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFA7B0BB),
                              fontSize: 12.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 52.w,
                          top: 27.h,
                          child: Text(
                            '74 liters',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),SizedBox(height: 23.h,),
              Padding(
                padding:  EdgeInsets.only(left: 28.w),
                child: Row(children: [
                  Container(
                    width: 180.w,
                    height: 58.h,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: 180.w,
                            height: 58.h,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.84, -0.54),
                                end: Alignment(-0.84, 0.54),
                                colors: [Colors.white, Colors.white.withOpacity(0)],
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFF58606A)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15.w,
                          top: 18.h,
                          child: Container(
                            width: 22.w,
                            height: 22.h,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Icon(Icons.person,color: Colors.white,),
                          ),
                        ),
                        Positioned(
                          left: 52.w,
                          top: 10.h,
                          child: Text(
                            'Tank size',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFA7B0BB),
                              fontSize: 12.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 52.w,
                          top: 27.h,
                          child: Text(
                            '74 liters',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),SizedBox(width: 20.w,),
                  Container(
                    width: 180.w,
                    height: 58.h,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: 180.w,
                            height: 58.h,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.84, -0.54),
                                end: Alignment(-0.84, 0.54),
                                colors: [Colors.white, Colors.white.withOpacity(0)],
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFF58606A)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15.w,
                          top: 18.h,
                          child: Container(
                            width: 22.w,
                            height: 22.h,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Image.asset('assets/door.png'),
                          ),
                        ),
                        Positioned(
                          left: 52.w,
                          top: 10..h,
                          child: Text(
                            'Tank size',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFA7B0BB),
                              fontSize: 12.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 52.w,
                          top: 27.h,
                          child: Text(
                            '74 liters',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],),
              ),Padding(
                padding:  EdgeInsets.only(left: 27.w,top: 39.h),
                child: Row(
                  children: [
                    Text(
                        'Renter',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.w,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                  ],
                ),
              ),Container(
                width: 430.w,
                height: 99.h,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        width: 430.w,
                        height: 99.h,
                        decoration: ShapeDecoration(
                          color: Color(0x82C2C2C2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 49.w,
                      top: 32.h,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '8000\$',
                              style: TextStyle(
                                color: Color(0xFF000B17),
                                fontSize: 20.w,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: '/Day',
                              style: TextStyle(
                                color: Color(0xFF000B17),
                                fontSize: 15.w,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 183.w,
                      top: 19.h,
                      child: GestureDetector(onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>transaction()));},
                        child: Container(
                          width: 213.w,
                          height: 50.h,
                          decoration: ShapeDecoration(
                            gradient: RadialGradient(
                              center: Alignment(0.67, 0.60),
                              radius: 0,
                              colors: [Color(0xFFFFCE50), Color(0xFFFFF0C9), Color(0xFFFFDB81), Color(0xFFD39906), Color(0xFFFFCE50), Color(0xFFD39906)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 247.w,
                      top: 32.h,
                      child: Text(
                        'Rent Now',
                        style: TextStyle(
                          color: Color(0xFFF7F5F2),
                          fontSize: 20.w,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
