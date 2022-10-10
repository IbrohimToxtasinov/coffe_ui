import 'package:coffee_app/screens/sign_in_1.dart';
import 'package:coffee_app/utils/colors.dart';
import 'package:coffee_app/utils/images.dart';
import 'package:coffee_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 160, left: 33, right: 34, bottom: 40).r,
        width: double.infinity.w,
        height: double.infinity.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [MyColors.C_6A432D, MyColors.C_AB6635.withOpacity(0.5)]
          ),
          image: const DecorationImage(image: AssetImage(MyImages.image_background),fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text("Coffee\nMade\nEasy",style: MyStyles.poppinsBold700.copyWith(fontSize: 66.sp,color: Colors.white,),
              ),
            ),
            const SizedBox(height: 180,),
            InkWell(
              splashColor: Colors.grey,
            onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const SignIn())));
            },
              child: Container(
                width: 322.w,
                height: 53.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                  color: MyColors.C_FFFFFF,
                ),
                child: Center(
                  child: Text("Start here", style: MyStyles.poppinsExtraBold500.copyWith(color: MyColors.C_74533D, fontSize: 18)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}