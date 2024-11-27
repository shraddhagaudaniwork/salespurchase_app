import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salespurchase_app/responsive/responsive.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/parties/party_controller.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/parties/widget/parties_textformfield.dart';
import 'package:salespurchase_app/widgets/button/addbuttonwithtext_widget.dart';
import '../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../utills/static_decoration.dart';

class PartiesPageTopHeader extends StatelessWidget {
  const PartiesPageTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    PartyController partyController = Get.put(PartyController());

    return (ResponsiveLayoutClass.isMobile(context))
        ? Row(
            children: [
              // all parties:
              const CommonDarkGreyTextTitleWidget(
                text: "All Parties",
              ),
              width10,
              // textformfield:
              const PartiesPageTextformfield()
            ],
          )
        : Row(
            children: [
              // text:
              const CommonDarkGreyTextTitleWidget(
                text: "All Parties",
              ),
              const Spacer(),
              // add button:
              Padding(
                padding: SizeConfig().getPadding(all: 8),
                child: AddbuttonwithtextWidget(
                  text: "New Party",
                  onTap: () {},
                ),
              ),
              // textformfield:
              const PartiesPageTextformfield(),
              // Expanded(
              //   child: CustomTextFormField(
              //     hintText: "Search",
              //     // borderRadius: 12,
              //     controller: partyController.searchController,
              //     onChanged: (val) {
              //       print(
              //           "=================${partyController.searchController}=================");
              //     },
              //   ),
              // ),
            ],
          );
  }
}
