import 'package:flutter/material.dart';
import 'package:salespurchase_app/commoncomponent/container/containerforweb.dart';
import 'package:salespurchase_app/components/homecomponent/drawer/widgets/drawercomponent.dart';
import 'package:salespurchase_app/responsive/responsive.dart';
import '../../../../../../../commoncomponent/container/container.dart';
import '../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../utills/app_colors.dart';
import '../../../../../../../utills/static_decoration.dart';
import '../../../../../../../widgets/custom_textwidget.dart';

class PartiesPageContainer extends StatelessWidget {
  const PartiesPageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return (ResponsiveLayoutClass.isMobile(context))
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlueContainerWidget(
                padding: SizeConfig().getPadding(
                  all: 20,
                ),
                width: MediaQuery.of(context).size.width,
                // height: 100.h,
                // width: 400.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      text: "27",
                      color: AppColors.white,
                      fontWeight: fontWeightbold,
                      fontSize: 20,
                    ),
                    // height05,
                    CustomTextWidget(
                      text: "All Parties",
                      color: AppColors.white,
                      fontSize: 13,
                      // fontWeight: fontWeightbold,
                    ),
                  ],
                ),
              ),
              height10,
              Row(
                children: [
                  //Green container:
                  const Expanded(
                    child: GreenContainerWidget(
                      percentage: "32%",
                      text1: '₹8,41,490.92',
                      text2: 'collected',
                    ),
                  ),
                  width10,
                  //Red Container:
                  const Expanded(
                    child: RedContainerWidget(
                      percentage: "32%",
                      text1: '₹8,41,490.92',
                      text2: 'pay',
                    ),
                  ),
                ],
              ),
              height15,
            ],
          )
        //for web
        : const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //Blue Container:
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ContainerBlueforweb(
                    percentage: "27",
                    title: "All Parties",
                  ),
                ),
                //Green Container:
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ContainerGreenforweb(
                    percentage: "₹ 50,41,490.92",
                    title: "Collect",
                  ),
                ),
                //Red Container:
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ContainerRedforweb(
                    percentage: "₹ 4,41,490.92",
                    title: "Pay",
                  ),
                ),
              ],
            ),
          );
  }
}
