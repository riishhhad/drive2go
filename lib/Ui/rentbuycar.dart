import 'package:carousel_slider/carousel_slider.dart';
import 'package:drive2go/Ui/buytransaction.dart';
import 'package:drive2go/Ui/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Bloc/nearby/nearby_bloc.dart';
import 'buycar.dart';

class rentbuycar extends StatefulWidget {
  final String id;
  final String carname;
  final String color;
  final String price;
  final List<dynamic> image;
  final String gearType;
  final String fuelType;
  final String noOfSeats;
  final String rating;
  final String noOfDoors;
  final String ownerName;
  final String ownerPhoneNumber;
  const rentbuycar({super.key, required this.id, required this.carname, required this.color, required this.price, required this.image, required this.gearType, required this.fuelType, required this.noOfSeats, required this.rating, required this.noOfDoors, required this.ownerName, required this.ownerPhoneNumber});

  @override
  State<rentbuycar> createState() => _rentbuycarState();
}
String _location = 'Unknown';
bool locationenabled = true;

class _rentbuycarState extends State<rentbuycar> {
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
                    GestureDetector(onTap: () {Navigator.of(context).pop(MaterialPageRoute(builder: (_)=>buycar()));},
                      child: Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 85.w,
                    ),
                    Text(
                      widget.carname,
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
                        child: Image.network(widget.image[itemIndex].toString(),fit: BoxFit.fitWidth,),
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
                      widget.carname,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF7F5F2),
                        fontSize: 20.w,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                ],),Column(children: [
                Row(
                  children: [
                    SizedBox(width: 28.w,),
                    Icon(CupertinoIcons.star_fill,color: Colors.yellow,size: 15,),
                    SizedBox(width: 13.w,),
                    Text(
                      widget.rating,
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
                            'Feual type',
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
                            widget.fuelType,
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
                            'gear type',
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
                            widget.gearType,
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
                            'owner name',
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
                            widget.ownerName,
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
                            'noof seats',
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
                            widget.noOfSeats,
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
              ),SizedBox(height: 23.h,),
              Container(
                width: 380.w,
                height: 91.h,
                decoration: ShapeDecoration(
                  color: Color(0xB21C2631),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),child: Row(
                children: [
                  SizedBox(height: 5.h,width: 15.w,),
                  Image.asset('assets/dp.png',width: 60.w,height: 60.h,),
                  Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left:19.w,top: 19.h),
                        child: Text(
                          'James Robert',
                          style: TextStyle(
                            color: Color(0xFFF7F5F2),
                            fontSize: 16.sp,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),SizedBox(height: 19.h,),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,color: Colors.white,),
                          Text(
                            'Kottakal',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFF7F5F2),
                              fontSize: 13.sp,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w300,
                              letterSpacing: 0.50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),SizedBox(width: 80.w,),
                  Icon(Icons.messenger_outline,color: Colors.white,),
                  SizedBox(width: 25.w,),
                  Icon(Icons.phone_in_talk_outlined,color: Colors.white,)
                ],
              ),
              ),SizedBox(height: 39.h,),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 20.w),
                    child: Text(
                      'Recommended for you',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.sp,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(left: 30.w,top: 10.h),
                child: SizedBox(
                  width: double.infinity.w,
                  height: 223.h,
                  child: BlocBuilder<NearbyBloc, NearbyState>(
                    builder: (context, state) {
                      if (state is NearbyBlocLoading) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state is NearbyBlocError) {
                        return Center(
                          child: Text(
                            "Error",
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }
                      if (state is NearbyBlocLoaded) {
                        var nearbyvechiledata =
                            BlocProvider.of<NearbyBloc>(context).nearbymodel;
                        return ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: nearbyvechiledata.length,
                          itemBuilder: (BuildContext context, int index) {

                            return  nearbyvechiledata[index].id==widget.id ?SizedBox():
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
                                  side: BorderSide(
                                      width: 1, color: Color(0xFF58606A)),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Container(
                                    width: 177.w,
                                    height: 146.h,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(nearbyvechiledata[index]
                                            .photos![0]
                                            .toString()),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8.r),
                                          topRight: Radius.circular(8.r),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 13.h,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 9.w),
                                        child: Text(
                                          nearbyvechiledata[index].brand.toString(),
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
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 40.w,
                                              height: 25.h,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              '$_location',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFFF7F5F2),
                                                fontSize: 13.w,
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w300,
                                                letterSpacing: 0.50.w,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "${nearbyvechiledata[index].rentPrice.toString()} /Day",
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
                        );
                      } else {
                        return SizedBox();
                      }
                    },
                  ),
                ),
              ),SizedBox(height: 10.h,),
              Container(
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
                              text: widget.price,
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
                      child: GestureDetector(onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>buytransaction()));},
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
                        'Buy Now',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
