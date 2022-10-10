import 'package:coffee_app/screens/screen.dart';
import 'package:coffee_app/utils/colors.dart';
import 'package:coffee_app/utils/images.dart';
import 'package:coffee_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          height: 875,         
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImages.image_background),fit: BoxFit.cover,              
            ),
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 65,left: 30),
                    width: 70,
                    height: 70,
                    child: SvgPicture.asset(MyImages.icon_back),
                  ),
                ),
                const SizedBox(height: 54),
                Center(
                  child: Container(
                    child: Text("Sign-Up",style: MyStyles.poppinsBold700.copyWith(fontSize: 30, color: MyColors.C_FFFFFF)),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 35),
                    width: 353,
                    height: 543,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(42)),
                      color: MyColors.C_6A432D,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildTextField("Full Name"),
                        buildTextField("Email Address"),
                        buildTextField("Phone Number"),
                        buildTextField("Create Password"),
                        buildTextField("Comfirm Password"),
                        const SizedBox(height: 12,),
                        InkWell(
                          splashColor: Colors.grey,
                          onTap: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => const ScreenPage())));
                          },
                          child: Container(
                            width: 322,
                            height: 53,
                            decoration: const BoxDecoration(
                              color: MyColors.C_FFFFFF,
                              borderRadius: BorderRadius.all(Radius.circular(22)),
                            ),
                            child: Center(
                              child: Text("Submit",style: MyStyles.poppinsExtraBold500.copyWith(fontSize: 18, color: MyColors.C_74533D),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
Widget buildTextField(String name, ) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Text(name, style: MyStyles.poppinsBlack400.copyWith(color: MyColors.C_FFFFFF, fontSize: 18)),
      ),
      const SizedBox(height: 1,),
      Container(
        width: 322,
        height: 48,
        child: TextField(
          style: const TextStyle(color: MyColors.C_FFFFFF),
          keyboardType: TextInputType.text,
          obscureText: false,
          decoration: InputDecoration(
            filled: true,
            fillColor: MyColors.C_C59C7F.withOpacity(0.5), 
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          ),
        ),
      ),
    ],
  );
}