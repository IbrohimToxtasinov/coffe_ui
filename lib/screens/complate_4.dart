import 'package:coffee_app/screens/home.dart';
import 'package:coffee_app/utils/colors.dart';
import 'package:coffee_app/utils/images.dart';
import 'package:coffee_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComplatePage4 extends StatefulWidget {
  const ComplatePage4({super.key});

  @override
  State<ComplatePage4> createState() => _ComplatePage4State();
}
class _ComplatePage4State extends State<ComplatePage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          width: double.infinity,
          height: 900,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImages.image_background4),fit: BoxFit.cover,              
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      MyColors.C_502C0B.withOpacity(0.7),
                      MyColors.C_FFFFFF.withOpacity(0),
                    ],
                  ),
                  border: Border.all(width: 8, color: MyColors.C_502C0B)
                ),
                child: Center(
                  child: SvgPicture.asset(MyImages.icon_galochka, width: 50, height: 45,),
                ),
              ),
              const SizedBox(height: 22,),  
              Container(
                child: Text("Order Completed", style: MyStyles.poppinsBold700.copyWith(fontSize: 18, color: MyColors.C_FFFFFF),),
              ),
              Container(
                child: Text("Order number #347664784", style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_FFFFFF.withOpacity(0.7)),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}