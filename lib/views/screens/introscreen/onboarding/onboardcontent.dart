import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../commoncomponent/commontext/commontext.dart';
import '../../../../responsive/sizeconfig.dart';
import '../../../../utills/app_colors.dart';
import '../../../../utills/static_decoration.dart';
import '../../../../widgets/custom_textwidget.dart';

class OnBoardContent extends StatelessWidget {
  OnBoardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  String image;
  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          image,
          height: MediaQuery.of(context).size.height * 0.400,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: SizeConfig().getPadding(
            right: 20,
            left: 20,
            top: 20,
            bottom: 5,
          ),
          child: CommonBlackTextTitleWidget(
            text: title,
            fontSize: 22,
            fontWeight: fontWeight600,
          ),
        ),
        Padding(
          padding: SizeConfig().getPadding(
            top: 10,
            right: 20,
            left: 20,
            bottom: 16,
          ),
          child: CustomTextWidget(
            color: AppColors.primaryColor,
            fontSize: 14,
            text: description,
          ),
        ),
        // Text(
        //   title,
        //   style: const TextStyle(
        //     color: Colors.white,
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        // const SizedBox(
        //   height: 16,
        // ),
        // Text(
        //   description,
        //   textAlign: TextAlign.center,
        //   style: const TextStyle(
        //     color: Colors.white,
        //     fontSize: 16,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
      ],
    );
  }
}
