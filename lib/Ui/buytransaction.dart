import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import 'bottomnavigation.dart';
import 'google_map_pickup.dart';
import 'googli_map_return.dart';

class buytransaction extends StatefulWidget {
  const buytransaction({super.key});

  @override
  State<buytransaction> createState() => _buytransactionState();
}

class _buytransactionState extends State<buytransaction> {
  bool isclicked=false;
  void change() {
    setState(() {
      isclicked=!isclicked;
    });
  }
  TextEditingController _datecontroller = TextEditingController();
  TextEditingController returndatecontroller = TextEditingController();
  Future<void> _selectDate() async{
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (_picked != null )
    {
      setState(() {
        _datecontroller.text =  DateFormat("MM/dd/yyyy").format(_picked);
      });
    }
  }
  Future<void> rturndate() async{
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null )
    {
      setState(() {
        returndatecontroller.text =  DateFormat("MM/dd/yyyy").format(picked);
      });
    }
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      print("hello");

      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
  }
  void handlePaymentErrorResponse(PaymentFailureResponse response){
    /*
    * PaymentFailureResponse contains three values:
    * 1. Error Code
    * 2. Error Description
    * 3. Metadata
    * */
    showAlertDialog(context, "Payment Failed", "Code: ${response.code}\nDescription: ${response.message}\nMetadata:${response.error.toString()}");
  }

  void handlePaymentSuccessResponse(PaymentSuccessResponse response){
    /*
    * Payment Success Response contains three values:
    * 1. Order ID
    * 2. Payment ID
    * 3. Signature
    * */
    showAlertDialog(context, "Payment Successful", "Payment ID: ${response.paymentId}");
  }

  void handleExternalWalletSelected(ExternalWalletResponse response){
    showAlertDialog(context, "External Wallet Selected", "${response.walletName}");
  }

  void showAlertDialog(BuildContext context, String title, String message){
    // set up the buttons
    Widget continueButton = ElevatedButton(
      child: const Text("Continue"),
      onPressed:  () {},
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  int _selectedIndex = -1;

  void _onContainerTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Container(
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
                Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 85.w,
                ),
                Text(
                  'Buying Details',
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
            ),
           SizedBox(height: 142.h,),
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
                    )
                ),
              ],
            ),SizedBox(height: 22.h,),
            SizedBox(  width: 352.w,

            ),TextButton(
              onPressed: () => _onContainerTapped(0),
              child: Container(  width: 352.w,
                height: 55.h,
                decoration: BoxDecoration(border: Border.all(
                    color: _selectedIndex == 0 ? Colors.blue : Colors.white)),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Row(
                    children: [
                      Icon(Icons.credit_card_sharp,color: Colors.white,),
                      SizedBox(width: 5.w,),
                      Text('RazrPay',style: TextStyle(color: Colors.white,fontSize: 20.sp),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 22.h,),
            GestureDetector( onTap: () => _onContainerTapped(1),
              child: Container(  width: 352.w,
                height: 55.h,
                decoration: BoxDecoration(border: Border.all(color: _selectedIndex == 1 ? Colors.blue :Colors.white)),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Row(
                    children: [
                      Icon(Icons.price_change_sharp,color: Colors.white,),
                      SizedBox(width: 5.w,),
                      Text('Cash',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
              ),
            ),SizedBox(height: 184.h,),
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
                          fontSize: 20.sp,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),SizedBox(width: 33.w,),
                  GestureDetector(onTap:() {
                    if (_selectedIndex==0){
                      Razorpay razorpay = Razorpay();
                      var options = {
                        'key': 'rzp_live_ILgsfZCZoFIKMb',
                        'amount': 100,
                        'name': 'Acme Corp.',
                        'description': 'Fine T-Shirt',
                        'retry': {'enabled': true, 'max_count': 1},
                        'send_sms_hash': true,
                        'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
                        'external': {
                          'wallets': ['paytm']
                        }
                      };
                      razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentErrorResponse);
                      razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccessResponse);
                      razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWalletSelected);
                      razorpay.open(options);

                    }else{Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_)=> bottomnaviation()), (route)=> false);    }},
                    child: Container(
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
                    ),
                  ),
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
