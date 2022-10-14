import 'package:flutter/material.dart';
import 'package:ichhatra/Screens/SplashScreen.dart';
import 'package:ichhatra/StringData/StringData.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return MediaQuery(
          child: child!,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
      title: StringData.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplaashScreen(),
    );
  }
}
