import 'package:drive2go/Bloc/search/search_bloc.dart';
import 'package:drive2go/Repository/Modelclass/searchModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  TextEditingController search = TextEditingController();
  late List<SearchModel> searchcardata;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.black, title:  Container(
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
        child:
        SizedBox(width: 248.w,
          child: TextFormField(
            style:TextStyle(color: Colors.white,),onChanged: (value) {
            setState(() {
              BlocProvider.of<SearchBloc>(context).add(
                  FetchsearchEvent(brandsearch: search.text));
            });
          },
            decoration:
            InputDecoration(hintText: 'What are you looking for..',
              hintStyle: TextStyle(color: Colors.white),
              icon:Icon(Icons.search,color: Colors.white,),
            ),
          ),
        ),
      ),),
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
              child: BlocBuilder<SearchBloc, SearchState>(
  builder: (context, state) {
    if (state is SearchBlocLoading) {
    return Center(
    child: CircularProgressIndicator(),
    );
    }
    if (state is SearchBlocError) {
    return Center(
    child: Text(
    "Error",
    style: TextStyle(color: Colors.white),
    ),
    );
    }
    if (state is SearchBlocLoaded) {
    searchcardata =
    BlocProvider
        .of<SearchBloc>(context)
        .searchmodel;
    return Column(
        children: [
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
                    SizedBox(
                        width: 50.w, child: Image.asset('assets/notification.png')),
                  ],
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    SizedBox(width: 50.w, child: Image.asset('assets/menu.png')),
                  ],
                ),
                SizedBox(
                  height: 34.h,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Browse by lifesyle',
                      style: TextStyle(
                        color: Color(0xFFF7F5F2),
                        fontSize: 22.sp,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                      ),
                    )
              ]
                ),SizedBox(width: double.infinity.w,height: (133*20/2).h,
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
                                                  image: NetworkImage(searchcardata[index].photos![0].toString()),
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
                                                    searchcardata[index].brand.toString(),
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
                                                  '${searchcardata[index].rentPrice.toString()}/day',
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
              ]);}else{
      return SizedBox();
    }
  },
),
            ),
          ),
        ));
  }
}
