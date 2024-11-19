import 'package:drive2go/Bloc/mycar/mycar_bloc.dart';
import 'package:drive2go/Repository/Modelclass/mycarModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mycar extends StatefulWidget {
  const Mycar({super.key});

  @override
  State<Mycar> createState() => _MycarState();
}

class _MycarState extends State<Mycar> {
  late List<MycarModel> mycar;

  @override
  void initState() {
    BlocProvider.of<MycarBloc>(context).add(Fetchmycarevent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      width: 430.w,
      height: 932.h,
      decoration: BoxDecoration(color: Colors.black

      ),child: DefaultTabController(
        length: 2, 
        child: Column(children: [
          Container( width: double.infinity.w,
            height: 80.h,
            decoration: ShapeDecoration(
              color:Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: TabBar(labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,unselectedLabelColor: Colors.grey,
              dividerColor: Colors.black,
              tabs: [
                Tab(
                  child: Text('Rent car'),
                ),
                Tab(child: Text('My car'),
                ),
              ],
            ),
          ),Expanded(
            child: TabBarView(
              children: [
                Center(
                  child:Container(width: double.infinity.w,color: Colors.black,),
                ),
                Center(
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5
                    ),
                    child: Container(child:BlocBuilder<MycarBloc, MycarState>(
  builder: (context, state) {
    if (state is MycarBlocLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    if (state is MycarBlocError) {
      return Center(
        child: Text(
          "Error",
          style: TextStyle(color: Colors.white),
        ),
      );
    }
    if (state is MycarBlocLoaded) {
      mycar =
          BlocProvider
              .of<MycarBloc>(context)
              .mycar;
      return SizedBox(width: 100.w,height:950.h,
        child: ListView.separated(
          itemCount: mycar.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
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
              ), child: Row(
              children: [
                Image.network(mycar[index].vehicle!.photos![0]),
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
                Padding(
                  padding: EdgeInsets.only(left: 70, top: 60),
                  child: Text(
                    '\$5000 / day',
                    style: TextStyle(
                      color: Color(0xFFFFD66D),
                      fontSize: 16.w,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            );
          }, separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 11, height: 8.h,);
        },
        ),
      );
    } else {return
      SizedBox();
  }
  }
  ),
                      width: double.infinity.w,color: Colors.black,
                    ),
                  )
                ),
              ],
            ),
          ),

        ],),
      ),
    )
      ,);
  }
}
