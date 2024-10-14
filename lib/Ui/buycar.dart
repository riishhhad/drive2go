import 'package:drive2go/Ui/rent.dart';
import 'package:drive2go/Ui/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class buycar extends StatefulWidget {
  const buycar({super.key});

  @override
  State<buycar> createState() => _buycarState();
}

class _buycarState extends State<buycar> {
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 37.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 179.w,
                          height: 55.h,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 292.w,
                      height: 48.h,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(-0.19, 6),
                          end: Alignment(0.09, -1),
                          colors: [Color(0x1BFFFFFF), Color(0xFF000C1B)],
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.w, color: Color(0xFF58606A)),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          Text(
                            'Search your dream car..',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF627387),
                              fontSize: 15.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w300,
                              letterSpacing: 1.50.w,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width:50.w, child: Image.asset('assets/menu.png')),
                  ],
                ),
                SizedBox(
                  height: 34.h,
                ),
                SizedBox(
                  width: double.infinity.w,
                  height: 78.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return CircleAvatar(
                        radius: 35.r,
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage("assets/nissan.png"),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 15.w,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nearby',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF7F5F2),
                        fontSize: 22.w,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View all',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF7F5F2),
                        fontSize: 15.w,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 34.h,
                ),
                GestureDetector(onTap: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>rent()));
                  },
                  child: SizedBox(
                    width: double.infinity.w,
                    height: 223.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return
                          Container(
                            width: 185.w,
                            height: 223.h,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(-0.19, 6),
                                end: Alignment(0.09, -1),
                                colors: [Color(0x1BFFFFFF), Color(0xFF000C1B)],
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFF58606A)),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 4.h,),
                                Container(
                                  width: 177.w,
                                  height: 146.h,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/ferari.png"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8.r),
                                        topRight: Radius.circular(8.r),
                                      ),
                                    ),
                                  ),
                                ),SizedBox(height: 13.h,),
                                Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: 9.w),
                                      child: Text(
                                        'Audi R8 Coupé',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFF7F5F2),
                                          fontSize: 16.w,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),SizedBox(height: 6.h,),
                                Row(
                                  children: [
                                    SizedBox(width: 5.w,),
                                    Container(
                                      width: 40.w,
                                      height: 25.h,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Icon(Icons.location_on_outlined,color: Colors.white,),
                                    ),Text(
                                      'Kottakal',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFF7F5F2),
                                        fontSize: 13.w,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w300,
                                        letterSpacing: 0.50.w,
                                      ),
                                    ),SizedBox(width: 24.w,),
                                    Text(
                                      '\$ 8000 / day',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFFFD66D),
                                        fontSize: 13.w,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.50.w,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 18.w,
                        );
                      },
                    ),
                  ),
                ), SizedBox(height: 30.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Latest Model ',
                      style: TextStyle(
                        color: Color(0xFFF7F5F2),
                        fontSize: 22,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    Text(
                      'View all',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF7F5F2),
                        fontSize: 15.w,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30.h
                  ,),
                GestureDetector(onTap: () {
                 // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>rent()));
                  },
                  child: SizedBox(
                    width: double.infinity.w,
                    height: 223.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return
                          Container(
                            width: 185.w,
                            height: 223.h,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(-0.19, 6),
                                end: Alignment(0.09, -1),
                                colors: [Color(0x1BFFFFFF), Color(0xFF000C1B)],
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFF58606A)),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 4.h,),
                                Container(
                                  width: 177.w,
                                  height: 146.h,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/audi.png"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8.r),
                                        topRight: Radius.circular(8.r),
                                      ),
                                    ),
                                  ),
                                ),SizedBox(height: 13.h,),
                                Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: 9.w),
                                      child: Text(
                                        'Audi R8 Coupé',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFF7F5F2),
                                          fontSize: 16.w,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),SizedBox(height: 6.h,),
                                Row(
                                  children: [
                                    SizedBox(width: 5.w,),
                                    Container(
                                      width: 40.w,
                                      height: 25.h,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Icon(Icons.location_on_outlined,color: Colors.white,),
                                    ),Text(
                                      'Kottakal',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFF7F5F2),
                                        fontSize: 13.w,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w300,
                                        letterSpacing: 0.50.w,
                                      ),
                                    ),SizedBox(width: 24.w,),
                                    Text(
                                      '\$ 8000 / day',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFFFD66D),
                                        fontSize: 13.w,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.50.w,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 18.w,
                        );
                      },
                    ),
                  ),
                ),SizedBox(height: 30.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'High Milage',
                      style: TextStyle(
                        color: Color(0xFFF7F5F2),
                        fontSize: 22,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    Text(
                      'View all',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF7F5F2),
                        fontSize: 15.w,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30.h,),
                GestureDetector(onTap: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>rent()));
                  },
                  child: SizedBox(
                    width: double.infinity.w,
                    height: 223.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return
                          Container(
                            width: 185.w,
                            height: 223.h,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(-0.19, 6),
                                end: Alignment(0.09, -1),
                                colors: [Color(0x1BFFFFFF), Color(0xFF000C1B)],
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: Color(0xFF58606A)),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 4.h,),
                                Container(
                                  width: 177.w,
                                  height: 146.h,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/ferari.png"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8.r),
                                        topRight: Radius.circular(8.r),
                                      ),
                                    ),
                                  ),
                                ),SizedBox(height: 13.h,),
                                Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(left: 9.w),
                                      child: Text(
                                        'Audi R8 Coupé',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFFF7F5F2),
                                          fontSize: 16.w,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),SizedBox(height: 6.h,),
                                Row(
                                  children: [
                                    SizedBox(width: 5.w,),
                                    Container(
                                      width: 40.w,
                                      height: 25.h,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Icon(Icons.location_on_outlined,color: Colors.white,),
                                    ),Text(
                                      'Kottakal',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFF7F5F2),
                                        fontSize: 13.w,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w300,
                                        letterSpacing: 0.50.w,
                                      ),
                                    ),SizedBox(width: 24.w,),
                                    Text(
                                      '\$ 8000 / day',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFFFD66D),
                                        fontSize: 13.w,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.50.w,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 18.w,
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30.h,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Cars',
                      style: TextStyle(
                        color: Color(0xFFF7F5F2),
                        fontSize: 22.w,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                      ),
                    ),Container(
                      width: 67.w,
                      height: 38.h,
                      padding: const EdgeInsets.all(10),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'View all',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFF7F5F2),
                              fontSize: 15.w,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),GestureDetector(onTap: () {
                  //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>rent()));
                  },
                  child: SizedBox(width: double.infinity.w,height: (133*20/2).h,
                    child: GridView.count(physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,childAspectRatio: 185/223,
                      shrinkWrap: true,
                      children: List.generate(10, (index) {
                        return   Container(
                          width: 185.w,
                          height: 223.h,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-0.19, 6),
                              end: Alignment(0.09, -1),
                              colors: [Color(0x1BFFFFFF), Color(0xFF000C1B)],
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Color(0xFF58606A)),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 4.h,),
                              Container(
                                width: 177.w,
                                height: 146.h,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/car.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.r),
                                      topRight: Radius.circular(8.r),
                                    ),
                                  ),
                                ),
                              ),SizedBox(height: 13.h,),
                              Row(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left: 9.w),
                                    child: Text(
                                      'Audi R8 Coupé',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFF7F5F2),
                                        fontSize: 16.w,
                                        fontFamily: 'SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),SizedBox(height: 6.h,),
                              Row(
                                children: [
                                  SizedBox(width: 5.w,),
                                  Container(
                                    width: 40.w,
                                    height: 25.h,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Icon(Icons.location_on_outlined,color: Colors.white,),
                                  ),Text(
                                    'Kottakal',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFF7F5F2),
                                      fontSize: 13.w,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: 0.50.w,
                                    ),
                                  ),SizedBox(width: 24.w,),
                                  Text(
                                    '\$ 8000 / day',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFFFD66D),
                                      fontSize: 13.w,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.50.w,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                SizedBox(height: 40.h,)
              ]),
            ),
          ),
        ));
  }
}
