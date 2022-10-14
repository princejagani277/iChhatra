import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:ichhatra/ColorCode/ColorsData.dart';
import 'package:ichhatra/Screens/HomeScreen.dart';
import 'package:ichhatra/Screens/LoginScreen.dart';
import 'package:ichhatra/StringData/StringData.dart';

class SplaashScreen extends StatefulWidget{
  const SplaashScreen({super.key});
  @override
  State<StatefulWidget> createState() =>SplashScreenState();

}

class SplashScreenState extends State<SplaashScreen> with TickerProviderStateMixin {
  late AnimationController controller;
  double value=0;
  @override
  void initState() {
    super.initState();
    print("init");
    Timer.periodic(Duration(seconds: 1), (timer) {
      print("timer");
      setState(() {
        print("process $value");
        if(value==100.0){
          checkLogin();
          timer.cancel();
        }
        value+=10;
      });
      //code to run on every 5 seconds
    });
  }
  @override

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,designSize:Size(StringData.swidth, StringData.sheight),splitScreenMode: true,minTextAdapt: true,);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 181.h,),
          Image.asset("assets/images/logo.png",height: 354.h,width: 465.w,),
          SizedBox(height: 71.h,),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: 381.w,
            height: 19.h,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                child: FAProgressBar(
                  currentValue: value,
                  size: 25,
                  maxValue: 110,
                  changeColorValue: 110,
                  changeProgressColor: ColorsData.progressbar,
                  backgroundColor: ColorsData.progressbarBg,
                  progressColor: ColorsData.progressbar,
                  animatedDuration: const Duration(milliseconds: 300),
                  direction: Axis.horizontal,
                  verticalDirection: VerticalDirection.up,
                  // displayText: 'mph',
                  formatValueFixed: 2,
                )

            ),
          )
        ],
      ),
    );
  }

  Future<void> checkLogin() async{
    Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
    // var login=await Shared_Preferences.prefGetBool(Stringdata.key_login, false)??false;
    // if(login){
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
    // }else{
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
    // }
  }
}