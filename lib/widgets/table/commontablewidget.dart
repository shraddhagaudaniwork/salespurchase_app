import 'package:flutter/material.dart';
import '../../commoncomponent/commontext/commontext.dart';
import '../../responsive/sizeconfig.dart';
import '../../utills/app_colors.dart';
import '../custom_containerwidget.dart';

class CommonTableWidget extends StatelessWidget {
  final String? title1;
  final String? title2;
  final String? title3;
  final String? title4;
  final String? title5;
  final String? detail1;
  final String? detail2;
  final String? detail3;
  final String? detail4;
  final String? detail5;
  final void Function()? deleteonpressedbutton;
  final void Function()? editonpressedbutton;

  const CommonTableWidget({
    super.key,
    this.title1,
    this.title2,
    this.title3,
    this.title4,
    this.title5,
    this.detail1,
    this.detail2,
    this.detail3,
    this.detail4,
    this.detail5,
    this.deleteonpressedbutton,
    this.editonpressedbutton,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      color: AppColors.grey,
      borderRadius: BorderRadius.circular(10),
      width: MediaQuery.of(context).size.width,
      padding: SizeConfig().getPadding(
        all: 10,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: SizeConfig().getPadding(
                  left: 2,
                  right: 2,
                  bottom: 5,
                  top: 5,
                ),
                child: CommonBlackTextTitleWidget(
                  text: title1.toString(),
                ),
              ),
            ),
            Padding(
              padding: SizeConfig().getPadding(
                left: 2,
                right: 2,
                bottom: 5,
                top: 5,
              ),
              child: const CommonBlackTextTitleWidget(
                text: ":",
                fontSize: 13,
              ),
            ),
            Expanded(
              child: Padding(
                padding: SizeConfig().getPadding(
                  left: 2,
                  right: 2,
                  bottom: 5,
                  top: 5,
                ),
                child: CommonBlackTextWidget(
                  text: detail1.toString(),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: SizeConfig().getPadding(
                  left: 2,
                  right: 2,
                  bottom: 5,
                  top: 5,
                ),
                child: CommonBlackTextTitleWidget(
                  text: title2.toString(),
                ),
              ),
            ),
            Padding(
              padding: SizeConfig().getPadding(
                left: 2,
                right: 2,
                bottom: 5,
                top: 5,
              ),
              child: const CommonBlackTextTitleWidget(
                text: ":",
              ),
            ),
            Expanded(
              child: Padding(
                padding: SizeConfig().getPadding(
                  left: 2,
                  right: 2,
                  bottom: 5,
                  top: 5,
                ),
                child: CommonBlackTextWidget(
                  text: detail2.toString(),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: SizeConfig().getPadding(
                  left: 2,
                  right: 2,
                  bottom: 5,
                  top: 5,
                ),
                child: CommonBlackTextTitleWidget(
                  text: title3.toString(),
                ),
              ),
            ),
            Padding(
              padding: SizeConfig().getPadding(
                left: 2,
                right: 2,
                bottom: 5,
                top: 5,
              ),
              child: const CommonBlackTextTitleWidget(
                text: ":",
              ),
            ),
            Expanded(
              child: Padding(
                padding: SizeConfig().getPadding(
                  left: 2,
                  right: 2,
                  bottom: 5,
                  top: 5,
                ),
                child: CommonBlackTextWidget(
                  text: detail3.toString(),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: SizeConfig().getPadding(
                  left: 2,
                  right: 2,
                  bottom: 5,
                  top: 5,
                ),
                child: CommonBlackTextTitleWidget(
                  text: title4.toString(),
                ),
              ),
            ),
            Padding(
              padding: SizeConfig()
                  .getPadding(left: 2, right: 10, bottom: 5, top: 5),
              child: const CommonBlackTextTitleWidget(
                text: ":",
              ),
            ),
            Expanded(
              child: Padding(
                padding: SizeConfig().getPadding(
                  left: 2,
                  right: 2,
                  bottom: 5,
                  top: 5,
                ),
                child: CommonBlackTextWidget(text: detail4.toString()),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: SizeConfig().getPadding(
                  left: 2,
                  right: 2,
                  bottom: 5,
                  top: 5,
                ),
                child: CommonBlackTextTitleWidget(
                  text: title5.toString(),
                ),
              ),
            ),
            Padding(
              padding: SizeConfig()
                  .getPadding(left: 2, right: 10, bottom: 5, top: 5),
              child: const CommonBlackTextTitleWidget(
                text: ":",
              ),
            ),
            Expanded(
              child: Padding(
                padding: SizeConfig().getPadding(
                  left: 2,
                  right: 2,
                  bottom: 5,
                  top: 5,
                ),
                child: CommonBlackTextWidget(text: detail5.toString()),
              ),
            )
          ],
        ),

        Row(
          children: [
            OutlinedButton(
              onPressed: deleteonpressedbutton,
              child: Text("Delete"),
            ),
            OutlinedButton(
              onPressed: editonpressedbutton,
              child: Text("Edit"),
            ),
          ],
        ),
      ]),
    );
  }
}
