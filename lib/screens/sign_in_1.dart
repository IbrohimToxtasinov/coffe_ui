import 'package:coffee_app/screens/screen.dart';
import 'package:coffee_app/screens/sign_in_2.dart';
import 'package:coffee_app/utils/colors.dart';
import 'package:coffee_app/utils/images.dart';
import 'package:coffee_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          height: 1000,        
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
                const SizedBox(height: 130),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 16),
                    width: 353,
                    height :469,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: MyColors.C_6A432D,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Text("Hello!",style: MyStyles.poppinsBold700.copyWith(fontSize: 25,color: MyColors.C_FFFFFF)),
                        ),
                        const SizedBox(height: 59,),
                        buildTextField("Phone Number or Email"),
                        const SizedBox(height: 36,),
                        buildTextField("Password"),
                        const SizedBox(height: 25,),
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
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                            ),
                            child: Center(
                              child: Text("Sign in",style: MyStyles.poppinsExtraBold500.copyWith(fontSize: 18, color: MyColors.C_74533D)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 11,),
                        Center(
                          child: Text("or Sign in with", style: MyStyles.poppinsExtraBold500.copyWith(fontSize: 18, color: MyColors.C_FFFFFF)),
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(MyImages.icon_google),
                            const SizedBox(width: 32,),
                            SvgPicture.asset(MyImages.icon_facebook),
                            const SizedBox(width: 32,),
                            SvgPicture.asset(MyImages.icon_twitter),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",style: MyStyles.poppinsExtraBold500.copyWith(fontSize: 16,color: Colors.grey)),
                            const SizedBox(width: 5,),
                            InkWell(
                              splashColor: Colors.grey,
                              onTap: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: ((context) => const SignUp())));
                              },
                              child: Text("Sign-Up",style: MyStyles.poppinsExtraBold500.copyWith(fontSize: 16,color: MyColors.C_FFFFFF, )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
Widget buildTextField(String name) {
  return TextField(
    style: const TextStyle(color: Colors.white),
    keyboardType: TextInputType.text,
    obscureText: false,
    decoration: InputDecoration(
      hintText: name,
      hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
          width: 2, color: Colors.white
        ),
      ),
    ),
  );
}