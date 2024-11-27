import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/introscreen/widgets/button/loginbutton.dart';
import 'package:salespurchase_app/views/screens/login/password/passwordcontroller.dart';
import 'package:salespurchase_app/views/screens/login/password/widgets/resetpassword_button.dart';
import 'package:salespurchase_app/views/screens/login/widgets/loginbutton.dart';
import 'package:salespurchase_app/views/screens/login/widgets/nextbutton.dart';
import 'package:salespurchase_app/views/screens/login/widgets/whitebutton.dart';

import '../../../../commoncomponent/commontext/commontext.dart';
import '../../../../responsive/sizeconfig.dart';
import '../../../../utills/app_assets.dart';
import '../../../../utills/app_colors.dart';
import '../../../../utills/static_decoration.dart';
import '../../../../widgets/custom_textformfieldwidget.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    Passwordcontroller passwordcontroller = Get.put(Passwordcontroller());

    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: passwordcontroller.passwordformkey,
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
                  text: "Sign In to Your Account",
                  fontSize: 18,
                ),
              ),
              Padding(
                padding:
                    SizeConfig().getPadding(right: 20, left: 20, bottom: 5),
                child: const CommonBlackTextWidget(
                  text: "Enter your password",
                  fontSize: 12,
                ),
              ),
              //first Name:
              Padding(
                padding: SizeConfig().getPadding(
                  right: 20,
                  left: 20,
                  bottom: 10,
                ),
                child: CustomTextFormField(
                  controller: passwordcontroller.passwordController,
                  prefixIcon: Padding(
                    padding: SizeConfig().getPadding(
                      all: 16,
                    ),
                    child: SvgPicture.asset(
                      AppAsset.passwordicon,
                      fit: BoxFit.contain,
                      // height: 3,
                      // width: 3,
                    ),
                  ),
                  // controller: loginController.emailnameController,
                  hintText: "Password*",
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Password ";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                    SizeConfig().getPadding(right: 20, left: 20, bottom: 16),
                child: const ResetpasswordButton(),
              ),
             const SizedBox(height: 220,),
              Padding(
                padding: SizeConfig().getPadding(
                  right: 20,
                  left: 20,
                  bottom: 20,
                ),
                child: GestureDetector(
                  onTap: () {
                    if (passwordcontroller.passwordformkey.currentState!
                        .validate()) {
                      passwordcontroller.passwordformkey.currentState!.save();
                    }
                  },
                  child: const LoginBlueButton(
                    text: "Log In",
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
