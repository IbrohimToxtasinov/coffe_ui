import 'package:coffee_app/screens/complate_3.dart';
import 'package:coffee_app/screens/complate_4.dart';
import 'package:coffee_app/screens/home.dart';
import 'package:coffee_app/utils/colors.dart';
import 'package:coffee_app/utils/images.dart';
import 'package:coffee_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComplatePage2 extends StatefulWidget {
  const ComplatePage2({super.key});

  @override
  State<ComplatePage2> createState() => _ComplatePage2State();
}
class _ComplatePage2State extends State<ComplatePage2> {
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
              image: AssetImage(MyImages.image_background2),fit: BoxFit.cover,              
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {Navigator.pop(context);},
                    child: Container(
                      margin: const EdgeInsets.only(left: 42, top: 75),
                      child: SvgPicture.asset(MyImages.icon_back,),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.grey,
                    onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const HomePage())));
                  },
                    child: Container(
                      margin: const EdgeInsets.only(right: 46, top: 75),
                      child: SvgPicture.asset(MyImages.icon_home,),
                    ),
                  ),
                ]
              ),
              Container(
                child: Text("Choose Payment Method", style: MyStyles.poppinsExtraBold500.copyWith(color: MyColors.C_FFFFFF, fontSize: 25),),
              ),
              const SizedBox(height: 4,),
              Row(
                children: [
                  const SizedBox(width: 33,),
                  Container(
                    child: SvgPicture.asset(MyImages.icon_one_dollar),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    child: Text("Total 250 USD", style: MyStyles.poppinsBlack400.copyWith(color: MyColors.C_FFFFFF, fontSize: 18),),
                  ),
                ],
              ),
              const SizedBox(height: 5,),
              Container(
                height: 161,
                width: double.infinity,
                padding: EdgeInsets.only(left: 66, right: 67, top: 15, bottom: 16),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: MyColors.C_C4C4C4.withOpacity(0.7),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                        margin: const EdgeInsets.only(top: 4, left: 20),
                        width: 19,
                        height: 19,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: MyColors.C_FFFFFF),
                        ),
                          child: Container(
                            child: Center(
                              child: SvgPicture.asset(MyImages.icon_point),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4,left: 11),
                          child: Text("Card details", style: MyStyles.poppinsBold700.copyWith(color: MyColors.C_6A432D, fontSize: 18),),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 255,
                      height: 72,
                      decoration: BoxDecoration(
                        color: MyColors.C_FFFFFF.withOpacity(0.5),
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 27,
                            bottom: 45,
                            child: Text("Edit",style: MyStyles.poppinsBlack400.copyWith(color: MyColors.C_6A432D, fontSize: 18),)
                          ),
                          const Positioned(
                            left: 5,
                            bottom: 8,
                            child: Icon(Icons.credit_card,color: MyColors.C_6A432D,size: 30,),
                          ),
                          Positioned(
                            top: 4,
                            left: 35,
                            child: Text("Ahlam Bush", style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_6A432D),)
                          ),
                          Positioned(
                            top: 24,
                            left: 35,
                            child: Text("Mastercard", style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_6A432D),)
                          ),
                          Positioned(
                            top: 30,
                            left: 155,
                            child: Text("****", style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_6A432D),)
                          ),
                          Positioned(
                            top: 26,
                            left: 195,
                            child: Text("2678", style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_6A432D),)
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ), 
              const SizedBox(height: 26,),
              buildPay("Bank Transfer"),
              const SizedBox(height: 30,),
              buildPay("Mobile Money"),
              const SizedBox(height: 30,),
              buildPay("Paypal"),
              const SizedBox(height: 88,),
              InkWell(
                splashColor: Colors.grey,
                onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const ComplatePage3())));
                },
                child: Center(
                  child: Container(
                    width: 296,
                    height: 53,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                      color: MyColors.C_FFFFFF,
                    ),
                    child: Center(
                      child: Text("Confirm Order", style: MyStyles.poppinsExtraBold500.copyWith(color: MyColors.C_74533D, fontSize: 18)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildPay(String name) {
  return Container(
    padding: const EdgeInsets.only(left: 15),
    width: double.infinity,
    height: 66,
    decoration: BoxDecoration(
      color: MyColors.C_C4C4C4.withOpacity(0.7),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
    ),
    child: Row(
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: MyColors.C_6A432D,width: 1)
          ),
        ),
        const SizedBox(width: 34,),
        Container(
          child: Text(name, style: MyStyles.poppinsExtraBold500.copyWith(fontSize: 18, color: MyColors.C_6A432D),),
        ),
      ],
    ),
  );
}