import 'package:ecommerce_ui/components/social_media_button.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screens/sign_in/components/sign_in_form.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(16.0),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  "Sign in with your email and password \nor continue with social media account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(12),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignInForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaButton(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialMediaButton(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialMediaButton(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ? ",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                      ),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                          color: kPrimaryColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
