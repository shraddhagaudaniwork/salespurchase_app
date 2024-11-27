import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/login/createnewpassword/createnewpasswordcontroller.dart';
import 'package:salespurchase_app/views/screens/login/password/widgets/resetpassword_button.dart';
import 'package:salespurchase_app/views/screens/login/verificationcode/verificationcodecontroller.dart';
import 'package:salespurchase_app/views/screens/login/widgets/loginbutton.dart';
import '../../../../commoncomponent/commontext/commontext.dart';
import '../../../../responsive/sizeconfig.dart';
import '../../../../routes/route_name.dart';
import '../../../../utills/app_assets.dart';
import '../../../../utills/app_colors.dart';
import '../../../../utills/static_decoration.dart';
import '../../../../widgets/custom_textformfieldwidget.dart';

class CreateNewPasswordPage extends StatelessWidget {
  const CreateNewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    CreateNewPasswordController createNewPasswordController =
        Get.put(CreateNewPasswordController());

    bool isPasswordStrong({required String password}) {
      return password.length >= 8 &&
          password.contains(RegExp(r'[A-Z]')) &&
          password.contains(RegExp(r'[a-z]')) &&
          password.contains(RegExp(r'[0-9]')) &&
          password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    }

    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: createNewPasswordController.createnewpasswordformkey,
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
                  text: "Create New Password",
                  fontSize: 18,
                ),
              ),
              Padding(
                padding:
                    SizeConfig().getPadding(right: 20, left: 20, bottom: 5),
                child: const CommonBlackTextWidget(
                  text: "New Password*",
                  fontSize: 12,
                ),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  right: 20,
                  left: 20,
                  bottom: 10,
                ),
                child: CustomTextFormField(
                  controller: createNewPasswordController.passwordController,
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
                  hintText: "Enter Password",
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter New Password ";
                    }
                    if (!isPasswordStrong(password: val)) {
                      return 'Password must be in special characters like capital,small,@ and numbers...';
                    }
                    if (val.length >= 8) {
                      return "Please enter 8 digit password";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                    SizeConfig().getPadding(right: 20, left: 20, bottom: 5),
                child: const CommonBlackTextWidget(
                  text: "Confirm Password*",
                  fontSize: 12,
                ),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  right: 20,
                  left: 20,
                  bottom: 10,
                ),
                child: CustomTextFormField(
                  controller:
                      createNewPasswordController.confirmpasswordController,
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
                  hintText: "Enter Confirm Password",
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Confirm Password ";
                    }
                    if (!isPasswordStrong(password: val)) {
                      return 'Password must be in special characters like capital,small,@ and numbers...';
                    }
                    if (val !=
                        createNewPasswordController.passwordController.text) {
                      return "Password does not match..";
                    } else if (val.length >= 8) {
                      return "Please enter 8 digit password";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  right: 20,
                  left: 20,
                  bottom: 20,
                ),
                child: GestureDetector(
                  onTap: () {
                    // Get.toNamed(RoutesName.homecomponent);
                    if (createNewPasswordController
                        .createnewpasswordformkey.currentState!
                        .validate()) {
                      createNewPasswordController
                          .createnewpasswordformkey.currentState!
                          .save();
                    }
                  },
                  child: const LoginBlueButton(
                    text: "Verify",
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
