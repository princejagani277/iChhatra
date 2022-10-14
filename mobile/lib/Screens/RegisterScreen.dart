import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../ColorCode/ColorsData.dart';
import 'package:pinput/pinput.dart';
import '../StringData/StringData.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget{
  String number;
  RegisterScreen(this.number);


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
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(StringData.welcome,style: TextStyle(
                    fontSize: 32.sp,fontWeight: FontWeight.w700
                ),),
                SizedBox(height: 15.h,),
                Text(StringData.registerDescription,style: TextStyle(color: ColorsData.txt),),
                SizedBox(height: 40.h,),
                //full name
                Container(
                  height: 50.h,
                  child: Row(
                    children: [
                      Container(
                          width: 20.w,
                          height: 20.h,
                          child: Image.asset("assets/images/ic_person.png",fit: BoxFit.fill,)),
                      Expanded(

                        child: TextField(
                            style: TextStyle(
                              fontSize: 20.h,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.h),
                              hintText: StringData.fullName,
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
                SizedBox(height: 15.h,),
                //phone number
                Container(
                  height: 50.h,
                  child: Row(
                    children: [
                      Container(
                          width: 20.w,
                          height: 20.h,
                          child: Image.asset("assets/images/ic_phone.png",fit: BoxFit.fill,)),
                      Expanded(

                        child: TextFormField(
                            initialValue: number,
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontSize: 20.h,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.h),
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
                SizedBox(height: 15.h,),
                //email id
                Container(
                  height: 50.h,
                  child: Row(
                    children: [
                      SizedBox(width: 5.w,),
                      Container(
                          width: 15.w,
                          height: 15.h,
                          child: Image.asset("assets/images/ic_mail.png",fit: BoxFit.fill,)),
                      SizedBox(width: 5,),
                      Expanded(

                        child: TextField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontSize: 20.h,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.h),
                              hintText: StringData.emailId,
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
                SizedBox(height: 112.h,),
                Container(
                  height: 69.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r)
                  ),
                  child: ElevatedButton(
                    child: Text(StringData.letsgo),
                    onPressed: () {

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
                SizedBox(height: 55.h,),
                Center(
                  child: Text.rich(
                      TextSpan(
                          style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w400),
                          text: StringData.alreadyAccount,
                          children: <InlineSpan>[
                            TextSpan(
                              text: StringData.signin,
                              style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w400,color: Colors.blue),
                              recognizer:  TapGestureRecognizer()..onTap = () {
                                print("gesture");
                                //Navigator.push(context, MaterialPageRoute(builder: (_)=>RegisterScreen()));
                              },
                            )
                          ]
                      )
                  ),
                ),
                SizedBox(height: 10.h,)
            ],) ,
         )
       ],
     ),
   );
  }

}