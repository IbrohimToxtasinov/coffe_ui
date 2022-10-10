import 'package:coffee_app/screens/complate_4.dart';
import 'package:coffee_app/screens/home.dart';
import 'package:coffee_app/utils/colors.dart';
import 'package:coffee_app/utils/images.dart';
import 'package:coffee_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComplatePage3 extends StatefulWidget {
  const ComplatePage3({super.key});

  @override
  State<ComplatePage3> createState() => _ComplatePage3State();
}
class _ComplatePage3State extends State<ComplatePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          width: double.infinity,
          height: 900,
          padding: const EdgeInsets.only(top: 70, left: 39, bottom: 80),   
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImages.image_background3),fit: BoxFit.cover,              
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {Navigator.pop(context);},
                    child: Container(
                      margin: const EdgeInsets.only(left: 2, top: 6),
                      child: SvgPicture.asset(MyImages.icon_back),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 80),
                    child: Text("Cart", style: MyStyles.poppinsBlack400.copyWith(fontSize: 25, color: MyColors.C_FFFFFF),)
                  ),
                ],
              ),
              const SizedBox(height: 47,),
              buldMenuPay(MyImages.image_beets, "Peet Coffee braw", "Since 1966, Peet's Coffee", "25", "2"),
              const SizedBox(height: 26,),
              buldMenuPay(MyImages.image_italian_coffee, "Italia coffee", "Since 1966, Coffee", "20", "1"),
              SizedBox(height: 38,),
              Container(
                width: 313,
                height: 59,
                decoration: const BoxDecoration(
                  color: MyColors.C_FFFFFF,
                  borderRadius: BorderRadius.all(Radius.circular(29)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 26,
                      top: 16,
                      bottom: 16,
                      child: Text("Promo Code", style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_894622.withOpacity(0.5)),)
                    ),
                    Positioned(
                      left: 191,
                      bottom: 0,
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 122,
                        height: 70,
                        decoration: const BoxDecoration(
                          color: MyColors.C_6A432D,
                          borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                        child: Center(child: Text("Apply", style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_FFFFFF),)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 67,),
              Column(
                children: [
                  buildCheckWords("Subtotal", "40"), 
                  const SizedBox(height: 24,),
                  buildCheckWords("Tax and Fees", "6.2"), 
                  const SizedBox(height: 10,),
                  buildCheckWords("Delivery", "8.2"), 
                  const SizedBox(height: 30,),
                  buildCheckWords("Total", "72"), 
                  const SizedBox(height: 30,),
                ],
              ),
              InkWell(
                splashColor: Colors.grey,
                onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const ComplatePage4())));
                },
                child: Center(
                  child: Container(
                    width: 310,
                    height: 53,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                      color: MyColors.C_FFFFFF,
                    ),
                    child: Center(
                      child: Text("CHECKOUT", style: MyStyles.poppinsExtraBold500.copyWith(color: MyColors.C_74533D, fontSize: 18)),
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
Widget buildCheckWords(String name, String price) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        child: Text(name, style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_FFFFFF),),
      ),
      
      Row(
        children: [
          Container(
            child: Text(price, style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_FFFFFF),),
          ),
          Container(
            margin: const EdgeInsets.only(right: 49, left: 10),
            child: Text("USD", style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_FFFFFF.withOpacity(0.5)),),
          ), 
        ],
      ), 
    ],
  );
}

Widget buldMenuPay(String imageName, String name, String name2, String price, String choose) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 81,
        height: 88,
        decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              MyColors.C_FFFFFF.withOpacity(0.9),
              MyColors.C_333333.withOpacity(0),
            ],
          ),
        ),
        child: Image.asset(imageName),
      ),
      const SizedBox(width: 5,),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: Text(name, style: MyStyles.poppinsBlack400.copyWith(fontSize: 20, color: MyColors.C_FFFFFF),),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: MyColors.C_FFFFFF),
                ),
                child: Container(
                  child: const Center(
                    child: Icon(Icons.clear,size: 15,color: MyColors.C_FFFFFF,)
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Text(name, style: MyStyles.poppinsBlack400.copyWith(color: MyColors.C_FFFFFF.withOpacity(0.5), fontSize: 18),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("${price}\$", style: MyStyles.poppinsBlack400.copyWith(color: MyColors.C_FFFFFF, fontSize: 18),),
              ),
              SizedBox(width: 135,),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: SvgPicture.asset(MyImages.icon_plus, width: 20, height: 20,),
                  ),
                  Text(choose, style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_FFFFFF),),
                  const SizedBox(width: 5,),
                  Container(
                    margin: const EdgeInsets.only(right: 30),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: MyColors.C_FFFFFF),
                    ),
                    child: Container(
                      child: Center(
                        child: SvgPicture.asset(MyImages.icon_minus),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
} 
    