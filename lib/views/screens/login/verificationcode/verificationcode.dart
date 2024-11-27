import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/login/password/widgets/resetpassword_button.dart';
import 'package:salespurchase_app/views/screens/login/verificationcode/verificationcodecontroller.dart';
import 'package:salespurchase_app/views/screens/login/verificationcode/widgets/resendcode_button.dart';
import 'package:salespurchase_app/views/screens/login/widgets/loginbutton.dart';
import '../../../../commoncomponent/commontext/commontext.dart';
import '../../../../responsive/sizeconfig.dart';
import '../../../../routes/route_name.dart';
import '../../../../utills/app_assets.dart';
import '../../../../utills/app_colors.dart';
import '../../../../utills/static_decoration.dart';
import '../../../../widgets/custom_textformfieldwidget.dart';

class VerificationCodePage extends StatelessWidget {
  const VerificationCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    VerificationCodecontroller verificationcodecontroller = Get.put(VerificationCodecontroller());

    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: verificationcodecontroller.verificationformkey,
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
                  AppAsset.verification,
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
                  text: "Enter Verification Code",
                  fontSize: 18,
                ),
              ),
              Padding(
                padding:
                SizeConfig().getPadding(right: 20, left: 20, bottom: 5),
                child: const CommonBlackTextWidget(
                  text: "Verification Code*",
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
                  controller: verificationcodecontroller.verificationcodeController
                  ,
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
                  hintText: "Enter Code*",
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter Code ";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                SizeConfig().getPadding(right: 20, left: 20, bottom: 16),
                child: const ResendCodeButton(),
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
                    Get.toNamed(RoutesName.createnewpassword);
                    // if (verificationcodecontroller.verificationformkey.currentState!
                    //     .validate()) {
                    //   verificationcodecontroller.verificationformkey.currentState!.save();
                    // }
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
