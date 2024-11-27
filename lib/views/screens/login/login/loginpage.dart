import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/login/login/logincontroller.dart';
import 'package:salespurchase_app/views/screens/login/widgets/nextbutton.dart';
import 'package:salespurchase_app/views/screens/login/widgets/whitebutton.dart';

import '../../../../commoncomponent/commontext/commontext.dart';
import '../../../../responsive/sizeconfig.dart';
import '../../../../routes/route_name.dart';
import '../../../../utills/app_assets.dart';
import '../../../../utills/app_colors.dart';
import '../../../../utills/static_decoration.dart';
import '../../../../widgets/custom_textformfieldwidget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());

    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: loginController.loginformkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: SizeConfig().getPadding(
                  left: 16,
                  top: 32,
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset(
                        AppAsset.backarrow,
                        // height: MediaQuery.of(context).size.height * 0.050,
                        // width: MediaQuery.of(context).size.width * 0.025,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: SizeConfig().getPadding(
                        left: 60,
                        right: 50,
                      ),
                      child: SvgPicture.asset(
                        AppAsset.logo1,
                        height: MediaQuery.of(context).size.height * 0.040,
                        width: MediaQuery.of(context).size.width * 0.022,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              height20,
              Center(
                child: SvgPicture.asset(
                  AppAsset.signin,
                  height: MediaQuery.of(context).size.height * 0.200,
                  width: MediaQuery.of(context).size.width * 0.250,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  all: 20,
                ),
                child: const CommonBlackTextTitleWidget(
                  text: "Sign In Your Account",
                  fontSize: 18,
                ),
              ),
              Padding(
                padding:
                    SizeConfig().getPadding(right: 20, left: 20, bottom: 5),
                child: const CommonBlackTextWidget(
                  text: "Enter your email id",
                  fontSize: 12,
                ),
              ),
              //first Name:
              Padding(
                padding: SizeConfig().getPadding(
                  right: 20,
                  left: 20,
                  bottom: 15,
                ),
                child: CustomTextFormField(
                  prefixIcon: Padding(
                    padding: SizeConfig().getPadding(
                      all: 16,
                    ),
                    child: SvgPicture.asset(
                      AppAsset.email,
                      fit: BoxFit.contain,
                      // height: 3,
                      // width: 3,
                    ),
                  ),
                  controller: loginController.emailnameController,
                  hintText: "Email",
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Email ";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  right: 20,
                  left: 20,
                  bottom: 20,
                ),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(RoutesName.passwordpage);
                    // if (loginController.loginformkey.currentState!.validate()) {
                    //   loginController.loginformkey.currentState!.save();
                    // }
                  },
                  child: const NextButton(),
                ),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  right: 20,
                  left: 20,
                  bottom: 5,
                ),
                child: Center(
                  child: CommonBlackTextWidget(
                    text: "Or Continue With",
                    fontWeight: fontWeight500,
                    fontSize: 13,
                  ),
                ),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  top: 20,
                  right: 20,
                  left: 20,
                  bottom: 10,
                ),
                child: const WhiteButton(
                  text: "Sign in with Microsoft",
                  assetName: AppAsset.microsoft,
                ),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  right: 20,
                  left: 20,
                  bottom: 10,
                ),
                child: const WhiteButton(
                  text: "Sign in with Google",
                  assetName: AppAsset.google,
                ),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  right: 20,
                  left: 20,
                  bottom: 10,
                ),
                child: const WhiteButton(
                  text: "Sign in with Facebook",
                  assetName: AppAsset.facebook,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
