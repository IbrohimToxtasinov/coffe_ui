import 'package:coffee_app/screens/complate_1.dart';
import 'package:coffee_app/screens/home.dart';
import 'package:coffee_app/utils/colors.dart';
import 'package:coffee_app/utils/images.dart';
import 'package:coffee_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}
class _ScreenPageState extends State<ScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.grey,
                    onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const HomePage())));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 70,left: 40),
                      child: SvgPicture.asset(MyImages.icon_home),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 70),
                    width: 236,
                    height: 53,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: MyColors.C_6A432D,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text("Asokoro, Abuja", style: MyStyles.poppinsExtraBold500.copyWith(fontSize: 18, color: MyColors.C_FFFFFF)),
                        ),
                        const SizedBox(width: 10,),
                        Center(
                          child: SvgPicture.asset(MyImages.icon_pastgi_strelka),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 70,right: 40),
                    child: SvgPicture.asset(MyImages.icon_user),
                  ),
                ],
              ),
              const SizedBox(height: 34,),
              Container(
                margin: const EdgeInsets.only(left: 45),
                child: Text("Hello, Ahlam", style: MyStyles.poppinsExtraBold500.copyWith(fontSize: 25, color: MyColors.C_FFFFFF),),
              ),
              const SizedBox(height: 11,),
              Container(
                margin: const EdgeInsets.only(left: 42),
                child: Text("What are you drinking today?", style: MyStyles.poppinsExtraBold500.copyWith(fontSize: 18, color: MyColors.C_FFFFFF),),
              ),
              const SizedBox(height: 7,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 44),
                    width: 57,
                    height: 57,
                    decoration: const BoxDecoration(
                      color: MyColors.C_834323,
                      borderRadius: BorderRadius.all(Radius.circular(20)) 
                    ),
                    child: const Center(
                      child: Icon(Icons.favorite_border,color: MyColors.C_FFFFFF,size: 30,),
                    ),
                  ),
                  Container(
                    width: 57,
                    height: 57,
                    decoration: const BoxDecoration(
                      color: MyColors.C_834323,
                      borderRadius: BorderRadius.all(Radius.circular(20)) 
                    ),
                    child: const Center(
                      child: Icon(Icons.local_offer_outlined,color: MyColors.C_FFFFFF,size: 30,),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 44),
                    width: 57,
                    height: 57,
                    decoration: const BoxDecoration(
                      color: MyColors.C_834323,
                      borderRadius: BorderRadius.all(Radius.circular(20)) 
                    ),
                    child: const Center(
                      child: Icon(Icons.more_horiz_outlined,color: MyColors.C_FFFFFF,size: 30,),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24,),
              Container(
                margin: const EdgeInsets.only(left: 47, right: 47),
                child: const Divider(thickness: 1, color: MyColors.C_FFFFFF,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 33),
                    child: Text("Favourite",style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_FFFFFF),),
                  ),
                  Container(
                    child: Text("Promotions",style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_FFFFFF),),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 47),
                    child: Text("More",style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_FFFFFF),),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: Text("Todays Promotions",style: MyStyles.poppinsBold700.copyWith(fontSize: 25, color: MyColors.C_FFFFFF),),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 25),
                    child: Text("see all",style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_FFFFFF),),
                  ),
                ],
              ),
              menu(),
              menu(),
              const SizedBox(height: 24,),
              Container(
                margin: const EdgeInsets.only(left: 47, right: 47),
                child: const Divider(thickness: 2, color: MyColors.C_FFFFFF,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 30),
                    child: const Icon(Icons.favorite_border_outlined,size: 30,color: MyColors.C_FFFFFF,),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 30),
                    child: SvgPicture.asset(MyImages.icon_user),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Widget menu() {
  return Container(
    margin: const EdgeInsets.only(top: 12, left: 10, right: 10),
    width: double.infinity,
    height: 160,
    child: Expanded(
      child: ListView.builder(scrollDirection: Axis.horizontal, physics: const BouncingScrollPhysics(), itemCount: name.length, itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(left: 20),
          width: 153,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                MyColors.C_FFFFFF.withOpacity(0.6),
                MyColors.C_FFFFFF.withOpacity(0.6),
                MyColors.C_333333.withOpacity(0.1),
                MyColors.C_FFFFFF.withOpacity(0.6),
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                child: Text(name[index], style: MyStyles.poppinsBlack400.copyWith(fontSize: 18,color: MyColors.C_623623),),
              ),
              Container(
                width: 150,
                height: 100,
                child: Image.asset(photo[index]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: Colors.grey,
                    onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const ComplatePage1())));
                    },
                    child: Text("Buy", style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_FFFFFF.withOpacity(0.5)),),
                  ),
                  const SizedBox(width: 30,),
                  Text("\$${price[index]}", style: MyStyles.poppinsBlack400.copyWith(fontSize: 18, color: MyColors.C_FFFFFF),)
                ],
              ),
            ],
          ),
        );
      }),
    ),  
  );
}
List photo = [
  MyImages.image_capuchino,
  MyImages.image_beets,
  MyImages.image_italian_coffee,
  MyImages.image_donot,
];
List price = ["8", "5", "4", "7"];
List name = ["Capuchino", "Beets", "Italia", "Donot"];

