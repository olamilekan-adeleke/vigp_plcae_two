import 'package:flutter/material.dart';
import 'package:responsive_screen_utils/responsive_screenutil.dart';

import 'package:responsive_screen_utils/responsive_screenutil_init.dart';

import 'cores/utitils/sizer_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveScreenUtilInit(
      designSize: const Size(428, 926),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const VigoPlace(),
      ),
    );
  }
}

class VigoPlace extends StatelessWidget {
  const VigoPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: <Widget>[
              SizedBox(height: (20)),
              Center(
                child: Image.asset(
                  'assets/icons/app_name.png',
                  height: (24),
                  width: (120),
                ),
              ),
              SizedBox(height: (40)),
              Image.asset(
                'assets/images/intro_people.png',
                height: (361),
                // width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
