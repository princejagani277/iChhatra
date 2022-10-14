import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ichhatra/ColorCode/ColorsData.dart';
import 'package:ichhatra/Screens/OtpScreen.dart';
import 'package:ichhatra/Screens/RegisterScreen.dart';
import 'package:ichhatra/StringData/StringData.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget{
  TextEditingController number=TextEditingController();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,designSize:Size(StringData.swidth, StringData.sheight),splitScreenMode: true,minTextAdapt: true,);
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
              Text(StringData.letsgo,style: TextStyle(
                fontSize: 32.sp,fontWeight: FontWeight.w700
              ),),
              SizedBox(height: 15.h,),
              Text(StringData.loginDescription,style: TextStyle(color: ColorsData.txt),),
              SizedBox(height: 59.h,),
            Container(
              height: 50.h,
              child: Row(
                children: [
                  Container(
                      width: 24.w,
                      child: Image.asset("assets/images/ic_phone.png",fit: BoxFit.fill,)),
                  Expanded(
                    child: TextField(
                      controller: number,
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                        style: TextStyle(
                          fontSize: 20.h,
                        ),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          counterText: "",
                            hintText: StringData.phoneNumber,

                          hintStyle: TextStyle(
                            fontSize: 20.sp,
                            color: ColorsData.txt
                          ),
                          border: InputBorder.none,
                           )),
                  ),
                ],
              ),
            ),
              Divider(color: ColorsData.txt,),
              SizedBox(height: 150.h,),
              Container(
                height: 69.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r)
                ),
                child: ElevatedButton(
                  child: Text(StringData.getSMS),
                  onPressed: () {
                    if(number.text.length==10){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>OtpScreen(number.text)));
                    }else{

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
              SizedBox(height: 20.h,),
              // Center(
              //   child: Text.rich(
              //       TextSpan(
              //         style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w400),
              //           text: StringData.notRegisterat,
              //           children: <InlineSpan>[
              //             TextSpan(
              //               text: StringData.createAccoount,
              //               style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w400,color: Colors.blue),
              //               recognizer:  TapGestureRecognizer()..onTap = () {
              //                 print("gesture");
              //                 Navigator.push(context, MaterialPageRoute(builder: (_)=>RegisterScreen()));
              //               },
              //             )
              //           ]
              //       )
              //   ),
              // ),

            ],
          ),)
        ],
      ),
    );
  }

}