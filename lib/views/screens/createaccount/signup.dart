import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:salespurchase_app/commoncomponent/commontext/commontext.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';
import 'package:salespurchase_app/utills/static_decoration.dart';
import 'package:salespurchase_app/views/screens/createaccount/signupcontroller.dart';
import 'package:salespurchase_app/views/screens/introscreen/widgets/button/createaccountbutton.dart';

import 'package:salespurchase_app/widgets/custom_textformfieldwidget.dart';
import '../../../routes/route_name.dart';
import '../../../utills/app_assets.dart';
import '../../../utills/app_colors.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController signUpController = Get.put(SignUpController());
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: signUpController.signuprformkey,
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
                      )
                    ],
                  ),
                ),
                height20,
                Center(
                  child: SvgPicture.asset(
                    AppAsset.signup,
                    height: MediaQuery.of(context).size.height * 0.200,
                    width: MediaQuery.of(context).size.width * 0.250,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: SizeConfig().getPadding(all: 20),
                  child: const CommonBlackTextTitleWidget(
                    text: "Create Your Account",
                    fontSize: 18,
                  ),
                ),

                ///first Name:
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
                        AppAsset.people,
                        fit: BoxFit.contain,
                        // height: 3,
                        // width: 3,
                      ),
                    ),
                    controller: signUpController.firstnameController,
                    hintText: "First Name",
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter First Name";
                      }
                      return null;
                    },
                  ),
                ),
                //phone Number:
                Padding(
                  padding: SizeConfig().getPadding(
                    right: 20,
                    left: 20,
                    bottom: 15,
                  ),
                  child: CustomTextFormField(
                    controller: signUpController.phonenonameController,
                    prefixIcon: Padding(
                      padding: SizeConfig().getPadding(
                        all: 16,
                      ),
                      child: SvgPicture.asset(
                        AppAsset.people,
                        fit: BoxFit.contain,
                        // height: 3,
                        // width: 3,
                      ),
                    ),
                    hintText: "Phone No",
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter Phone Number";
                      }
                      return null;
                    },
                  ),
                ),
                //email:
                Padding(
                  padding: SizeConfig().getPadding(
                    right: 20,
                    left: 20,
                    bottom: 15,
                  ),
                  child: CustomTextFormField(
                    controller: signUpController.emailnameController,
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
                    hintText: "Email",
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter Email";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: SizeConfig().getPadding(
                    right: 20,
                    left: 20,
                    bottom: 10,
                  ),
                  child: CustomTextFormField(
                    prefixIcon: const SizedBox(),
                    hintText: "Select Country",
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter Select Country";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: SizeConfig().getPadding(
                    right: 20,
                    left: 20,
                    bottom: 25,
                  ),
                  child: Row(
                    children: [
                      Obx(() {
                        // return CheckboxMenuButton(value: signUpController.isChecked.value, onChanged: (val){
                        //   signUpController.toggleCheckbox();
                        // }, child: Text("hsjc"));
                        return Checkbox(
                            activeColor: AppColors.wcolor,
                            checkColor: AppColors.bluecolor,
                            value: signUpController.isChecked.value,
                            onChanged: (val) {
                              signUpController.toggleCheckbox();
                            });
                      }),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                            text:
                                'By clicking the button below to \ncreate an account, I accept the\n',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Terms Of Services',
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 14,
                                    fontWeight: fontWeight600,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.toNamed(RoutesName.homecomponent);
                                    }),
                              const TextSpan(
                                text: ' and',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                  text: ' \nPrivacy Notice.',
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 14,
                                    fontWeight: fontWeight600,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.toNamed(
                                        RoutesName.homecomponent,
                                      );
                                    }),
                            ],
                          ),
                        ),
                      ),
                    ],
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
                      if (signUpController.signuprformkey.currentState!
                          .validate()) {
                        signUpController.signuprformkey.currentState!.save();
                      }
                    },
                    child: const CreateAccountButton(),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
