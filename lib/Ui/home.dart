import 'package:drive2go/Bloc/Allcars/allcars_bloc.dart';
import 'package:drive2go/Bloc/nearby/nearby_bloc.dart';
import 'package:drive2go/Repository/Modelclass/AllcarsModel.dart';
import 'package:drive2go/Repository/Modelclass/nearbyModel.dart';
import 'package:drive2go/Ui/rent.dart';
import 'package:drive2go/Ui/search.dart';
import 'package:drive2go/Ui/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String _location = 'Unknown';
  bool locationenabled = true;

  @override
  void initState() {
    _getCurrentLocation();

    BlocProvider.of<AllcarsBloc>(context).add(Fetchallcarsevent());
    super.initState();
  }

  Future<void> _getCurrentLocation() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;

      // Test if location services are enabled.
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        setState(() {
          locationenabled = false;
        });
        throw ('Location services are disabled.');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          throw ('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        throw ('Location permissions are permanently denied, we cannot request permissions.');
      }

      // Get the current position of the device.
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      // Convert the coordinates to a human-readable address.
      List<Placemark> placemarks =
      await placemarkFromCoordinates(position.latitude, position.longitude);
      BlocProvider.of<NearbyBloc>(context).add(Fetchnearbyevent(
          lat: position.latitude.toString(),
          long: position.longitude.toString()));

      Placemark place = placemarks[0];

      setState(() {
        _location = place.locality!;
        print("hello" + _location);
      });
    } catch (e) {
      print('Error occurred: $e');
      // Optionally show an error message to the user here.
    }
  }

  // list of location  converting
  Future<List<Placemark>> _getVechileAddress(String lat, String long) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        double.parse(lat),
        double.parse(long),
      );

      return placemarks; // Return the list of placemarks instead of a single placemark
    } catch (e) {
      print(e);
      return []; // Return an empty list in case of an error
    }
  }

  late List<AllcarsModel> allcardata;
  late List<NearbyModelClass> nearbyvechiledata;

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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                              ),
                              SizedBox(
                                height: 7.h,
                              ),
                              Text(
                                '$_location',
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
                    SizedBox(
                        width: 50.w,
                        child: Image.asset('assets/notification.png')),
                  ],
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => Search()));
                      },
                      child: Container(
                        width: 292.w,
                        height: 48.h,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(-0.19, 6),
                            end: Alignment(0.09, -1),
                            colors: [Color(0x1BFFFFFF), Color(0xFF000C1B)],
                          ),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.w, color: Color(0xFF58606A)),
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
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1.50.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                        width: 50.w, child: Image.asset('assets/menu.png')),
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
                        backgroundImage: AssetImage("assets/toyota.png"),
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
                SizedBox(
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
                        nearbyvechiledata =
                            BlocProvider
                                .of<NearbyBloc>(context)
                                .nearbymodel;
                        return ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: nearbyvechiledata.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => rent(
                                      id: nearbyvechiledata[index].id
                                          .toString(),
                                      carname: nearbyvechiledata[index]
                                          .model.toString(),
                                      color: nearbyvechiledata[index]
                                          .vehicleColor.toString(),
                                      price: nearbyvechiledata[index]
                                          .rentPrice.toString(),
                                      image: nearbyvechiledata[index].photos!,
                                      gearType: nearbyvechiledata[index].gearType.toString(),
                                      fuelType: nearbyvechiledata[index].fuelType.toString(),
                                      noOfSeats:nearbyvechiledata[index].noOfSeats.toString(),
                                      rating: nearbyvechiledata[index].rating.toString(),
                                      noOfDoors: nearbyvechiledata[index].noOfDoors.toString(),
                                      ownerName: nearbyvechiledata[index].ownerName.toString(),
                                      ownerPhoneNumber: nearbyvechiledata[index].ownerPhoneNumber.toString())));
                            },
                              child: Container(
                                width: 185.w,
                                height: 223.h,
                                decoration: ShapeDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(-0.19, 6),
                                    end: Alignment(0.09, -1),
                                    colors: [
                                      Color(0x1BFFFFFF),
                                      Color(0xFF000C1B)
                                    ],
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
                                          image: NetworkImage(
                                              nearbyvechiledata[index]
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
                                            nearbyvechiledata[index].brand
                                                .toString(),
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5.w),
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
                                            "${nearbyvechiledata[index]
                                                .rentPrice.toString()} /Day",
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
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Cars',
                      style: TextStyle(
                        color: Color(0xFFF7F5F2),
                        fontSize: 22.w,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
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
                ),
                SizedBox(
                  width: double.infinity.w,
                  height: (63 * 20 / 2).h,
                  child: BlocBuilder<AllcarsBloc, AllcarsState>(
                    builder: (context, state) {
                      if (state is AllcarsBlocLoading) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state is AllcarsBlocError) {
                        return Center(
                          child: Text(
                            "Error",
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }
                      if (state is AllcarsBlocLoaded) {
                        allcardata =
                            BlocProvider
                                .of<AllcarsBloc>(context)
                                .allcarsmodel;
                        return GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 185 / 223,
                          shrinkWrap: true,
                          children: List.generate(allcardata.length, (index) {
                            return FutureBuilder<List<Placemark>>(
                              future: _getVechileAddress(
                                  allcardata[index]
                                      .location!
                                      .coordinates!
                                      .first
                                      .toString(),
                                  allcardata[index]
                                      .location!
                                      .coordinates!
                                      .last
                                      .toString()),
                              builder: (BuildContext context,
                                  AsyncSnapshot<List<Placemark>> snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return Center(
                                      child: CircularProgressIndicator());
                                } else if (snapshot.hasError) {
                                  return Center(
                                      child: Text("Error fetching location"));
                                } else if (snapshot.hasData) {
                                  String? place = snapshot.data![0].locality;
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  rent(
                                                    id: allcardata[index].id
                                                        .toString(),
                                                    carname: allcardata[index]
                                                        .brand
                                                        .toString(),
                                                    color: allcardata[index]
                                                        .vehicleColor
                                                        .toString(),
                                                    price: allcardata[index]
                                                        .rentPrice
                                                        .toString(),
                                                    image: allcardata[index]
                                                        .photos!,
                                                    gearType: allcardata[index]
                                                        .gearType
                                                        .toString(),
                                                    fuelType: allcardata[index]
                                                        .fuelType
                                                        .toString(),
                                                    noOfSeats: allcardata[index]
                                                        .noOfSeats
                                                        .toString(),
                                                    rating: allcardata[index]
                                                        .rating
                                                        .toString(),
                                                    noOfDoors: allcardata[index]
                                                        .noOfDoors
                                                        .toString(),
                                                    ownerName: allcardata[index]
                                                        .ownerName
                                                        .toString(),
                                                    ownerPhoneNumber: allcardata[index]
                                                        .ownerPhoneNumber
                                                        .toString(),
                                                  )));
                                    },
                                    child: Container(
                                      width: 185.w,
                                      height: 223.h,
                                      decoration: ShapeDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(-0.19, 6),
                                          end: Alignment(0.09, -1),
                                          colors: [
                                            Color(0x1BFFFFFF),
                                            Color(0xFF000C1B)
                                          ],
                                        ),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(0xFF58606A)),
                                          borderRadius: BorderRadius.circular(
                                              10.r),
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
                                                image: NetworkImage(
                                                    allcardata[index]
                                                        .photos![0]
                                                        .toString()),
                                                fit: BoxFit.cover,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8.r),
                                                  topRight: Radius.circular(
                                                      8.r),
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
                                                padding: EdgeInsets.only(
                                                    left: 9.w),
                                                child: Text(
                                                  allcardata[index]
                                                      .brand
                                                      .toString(),
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
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 5.w,
                                              ),
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
                                                place.toString(),
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFFF7F5F2),
                                                  fontSize: 13.w,
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w300,
                                                  letterSpacing: 0.50.w,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 17.w,
                                              ),
                                              Text(
                                                "${allcardata[index].rentPrice
                                                    .toString()}/Day",
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
                                    ),
                                  );
                                } else {
                                  return SizedBox();
                                }
                              },
                            );
                          }),
                        );
                      } else {
                        return SizedBox();
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 40.h,
                )
              ]),
            ),
          ),
        ));
  }
}
