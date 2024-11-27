import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salespurchase_app/views/screens/introscreen/widgets/button/createaccountbutton.dart';
import 'package:salespurchase_app/views/screens/introscreen/widgets/button/loginbutton.dart';
import '../../../commoncomponent/commontext/commontext.dart';
import '../../../responsive/sizeconfig.dart';
import '../../../utills/app_assets.dart';
import '../../../utills/app_colors.dart';
import '../../../utills/static_decoration.dart';
import '../../../widgets/custom_textwidget.dart';

class Introscreen3 extends StatelessWidget {
  const Introscreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.wcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset(
              AppAsset.intro3,
              height: MediaQuery.of(context).size.height * 0.400,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: SizeConfig().getPadding(all: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        SizeConfig().getPadding(right: 8, left: 8, top: 10),
                    child: CommonBlackTextTitleWidget(
                      text: "Download document",
                      fontSize: 22,
                      fontWeight: fontWeight600,
                    ),
                  ),
                  Padding(
                    padding: SizeConfig().getPadding(all: 8),
                    child: const CustomTextWidget(
                      color: AppColors.primaryColor,
                      fontSize: 15,
                      text:
                          "Save your changes by clicking on DONE, then select DOWNLOAD DOCUMENT to securely download it via protected SSL connection.",
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),

                  //create account:
                  Padding(
                    padding: SizeConfig().getPadding(
                      right: 30,
                      left: 30,
                      top: 30,
                      bottom: 20,
                    ),
                    child: const CreateAccountButton(),
                  ),
                  Padding(
                    padding: SizeConfig()
                        .getPadding(right: 30, left: 30, bottom: 30),
                    child: const LoginButton(),
                  ),
                ],
              ),
            ),
            // CustomContainerWidget(
            //   alignment: Alignment.center,
            //   height: MediaQuery.of(context).size.height * 0.350,
            //   width: MediaQuery.of(context).size.width,
            //   // image: DecorationImage(image:  ),
            //   // image: const DecorationImage(
            //   //
            //   //   // image: AssetImage(
            //   //   //   AppAsset.intro1,
            //   //   // ),
            //   //   // fit: BoxFit.cover,
            //   // ),
            // ),
            // Padding(
            //   padding: SizeConfig().getPadding(all: 16),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Padding(
            //         padding: SizeConfig().getPadding(all: 8),
            //         child: CommonBlackTextTitleWidget(
            //           text: "Drag & Drop document",
            //           fontSize: 30,
            //           fontWeight: fontWeight600,
            //         ),
            //       ),
            //       Padding(
            //         padding: SizeConfig().getPadding(all: 8),
            //         child: const CustomTextWidget(
            //           color: AppColors.primaryColor,
            //           fontSize: 16,
            //           text:
            //               "To sign a document, drag and drop it into the area above or click on the link to choose your file. Your document will appear on the screen.",
            //         ),
            //       ),
            //       //   child: CommonBlackTextWidget(
            //       //     color: AppColors.primaryColor,
            //       //       fontSize: 18,
            //       //       text:
            //       //           "To sign a document, drag and drop it into the area above or click on the link to choose your file. Your document will appear on the screen."),
            //       // )
            //       // CustomTextWidget(text:  "),
            //       Padding(
            //         padding: SizeConfig().getPadding(
            //           right: 30,
            //           left: 30,
            //           top: 30,
            //           bottom: 20,
            //         ),
            //         child: const CreateAccountButton(),
            //       ),
            //       Padding(
            //         padding: SizeConfig()
            //             .getPadding(right: 30, left: 30, bottom: 30),
            //         child: const LoginButton(),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
