import 'package:coffee_app/screens/complate_2.dart';
import 'package:coffee_app/screens/complate_3.dart';
import 'package:coffee_app/screens/home.dart';
import 'package:coffee_app/screens/screen.dart';
import 'package:coffee_app/screens/complate_1.dart';
import 'package:coffee_app/screens/sign_in_1.dart';
import 'package:coffee_app/screens/sign_in_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const HomePage(),
    );
  }
}