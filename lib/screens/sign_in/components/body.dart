import 'package:ecommerce_ui/components/social_media_button.dart';
import 'package:ecommerce_ui/screens/sign_in/components/sign_in_form.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          child: Column(
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Sign in with your email and password \nor continue with social media account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(12),
                ),
              ),
              SignInForm(),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
