import 'package:flutter/material.dart';
import 'package:ichhatra/Screens/RegisterScreen.dart';

import '../ColorCode/ColorsData.dart';
import 'package:pinput/pinput.dart';
import '../StringData/StringData.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScreen extends StatelessWidget{
  String number;
  OtpScreen(this.number);
  /// Create Controller
  final pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,designSize:Size(StringData.swidth, StringData.sheight),splitScreenMode: true,minTextAdapt: true,);
    final defaultPinTheme = PinTheme(
      width: 55.w,
      height: 73.h,
      //padding: EdgeInsetsGeometry.lerp(a, b, t),
      textStyle: TextStyle(fontSize: 32.sp, color: Colors.black, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(12.r),
      ),
    );

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 28.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 49.w),
            child: Image.asset("assets/images/logo.png",height: 300.h,),
          ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(StringData.otp,style: TextStyle(
                fontSize: 32.sp,fontWeight: FontWeight.w700
            ),),
            SizedBox(height: 15.h,),
            Text(StringData.otpdescription,style: TextStyle(color: ColorsData.txt),),
            SizedBox(height: 40.h,),
            Center(
              child: Container(
                child: Pinput(
                  controller: pinController,
                  length: 5,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyDecorationWith(
                    border: Border.all(color: ColorsData.pinputfocus),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      color: Colors.white,
                    ),
                  ),

                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
              ),
            ),
            SizedBox(height: 200.h,),
            Container(
              height: 69.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r)
              ),
              child: ElevatedButton(
                child: Text(StringData.signin),
                onPressed: () {
                  if(pinController.text.length==5){
                    Navigator.push(context,MaterialPageRoute(builder: (_)=>RegisterScreen(number)));
                  }

                },
                style: ElevatedButton.styleFrom(
                    primary: ColorsData.btn,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0.0,
                    // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold)),
              ),
            ),

          ],
        ),
      )
        ],
      ),
    );
  }

}