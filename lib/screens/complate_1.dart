import 'package:coffee_app/screens/complate_2.dart';
import 'package:coffee_app/screens/home.dart';
import 'package:coffee_app/utils/colors.dart';
import 'package:coffee_app/utils/images.dart';
import 'package:coffee_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ComplatePage1 extends StatefulWidget {
  const ComplatePage1({super.key});

  @override
  State<ComplatePage1> createState() => _ComplatePage1State();
}
class _ComplatePage1State extends State<ComplatePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 70, left: 45, right: 28, bottom: 58),
          height: 900,         
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImages.image_background2),fit: BoxFit.cover,              
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 5),
                height: 205,
                width: 294,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(19)),
                  color: MyColors.C_FFFFFF.withOpacity(0.2),
                ),
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {Navigator.pop(context);},
                      child: Positioned(
                        left: 5,
                        top: 5,
                        child: SvgPicture.asset(MyImages.icon_back,width: 60, height: 60,),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 200,
                        height: 200,
                        child: Image.asset(MyImages.image_capuchino),
                      ),
                    ),
                    const Positioned(
                      right: 16,
                      bottom: 10,
                      child: Icon(Icons.favorite_border_outlined, size: 30,color: MyColors.C_FFFFFF,),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: Text("Kisbi Coffee Pack", style: MyStyles.poppinsBold700.copyWith(fontSize: 25, color: MyColors.C_FFFFFF)),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 5,top: 1),
                    child: SvgPicture.asset(MyImages.icon_star),
                  ),
                  const SizedBox(width: 8,),
                  Container(
                    child: Text("2.5", style: MyStyles.poppinsBold700.copyWith(fontSize: 18, color: MyColors.C_FFFFFF),),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 21, left: 15),
                    child: Text("USD 100", style: MyStyles.poppinsBlack400.copyWith(color: MyColors.C_FFFFFF, fontSize: 18),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: SvgPicture.asset(MyImages.icon_plus),
                      ),
                      Text("03", style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_FFFFFF),),
                      const SizedBox(width: 5,),
                      Container(
                        margin: const EdgeInsets.only(right: 30),
                        width: 27,
                        height: 27,
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
              Text("The beans you brew are actually the processed and roasted seeds from a fruit, which is coffee", style: MyStyles.poppinsBlack400.copyWith(color: MyColors.C_FFFFFF, fontSize: 18)),
              const SizedBox(height: 21,), 
              buildMenu2(MyImages.image_beets, "Beet", "20"),
              const SizedBox(height: 8,),
              buildMenu2(MyImages.image_donot, "Donot", "10"),
              const SizedBox(height: 8,),
              buildMenu2(MyImages.image_italian_coffee, "Italia", "50"),
              const SizedBox(height: 20,),
            InkWell(
              splashColor: Colors.grey,
            onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const ComplatePage2())));
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
                    child: Text("Place Order", style: MyStyles.poppinsExtraBold500.copyWith(color: MyColors.C_74533D, fontSize: 18)),
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
Widget buildMenu2(String imageName, String name, String price) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Container(
            width: 77,
            height: 77,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: MyColors.C_FFFFFF.withOpacity(0.2), 
            ),
            child: Center(
              child: Image.asset(imageName, width: 50,height: 50,),
            ),
          ),
          const SizedBox(width: 10,),
          Text(name, style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_FFFFFF),)
        ],
      ),
      Row(
        children: [
          Text("$price\$", style: MyStyles.poppinsBlack400.copyWith(color: MyColors.C_FFFFFF, fontSize: 18)),
          const SizedBox(width: 11,),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: MyColors.C_FFFFFF, width: 2), 
            ),
          ),
        ],
      ),
    ],
  );
}