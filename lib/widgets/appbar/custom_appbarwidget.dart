import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salespurchase_app/responsive/responsive.dart';
import 'package:salespurchase_app/utills/app_assets.dart';
import 'package:salespurchase_app/widgets/button/addbutton_widget.dart';
import 'package:salespurchase_app/widgets/button/refernow_buttonwidget.dart';

import '../../responsive/sizeconfig.dart';
import '../../utills/app_colors.dart';
import '../../utills/static_decoration.dart';

// class CustomAppBarWidget extends StatelessWidget
//     implements PreferredSizeWidget {
//   @override
//   Size get preferredSize => const Size.fromHeight(60.0);
//
//   // Size get preferredSize => const Size.fromHeight(40.0);
//
//   const CustomAppBarWidget({
//     super.key,
//     this.title,
//     this.leading,
//     this.actions,
//     this.centerTitle,
//     this.backgroundColor,
//     this.foregroundColor,
//     this.elevation,
//     this.flexibleSpace,
//   });
//
//   final Widget? title;
//   final Widget? leading;
//   final List<Widget>? actions;
//   final bool? centerTitle;
//   final Color? backgroundColor;
//   final Color? foregroundColor;
//   final double? elevation;
//   final Widget? flexibleSpace;
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       flexibleSpace: flexibleSpace,
//       title: title ,
//       leading: leading,
//       actions:  actions,
//       centerTitle: centerTitle,
//       backgroundColor: backgroundColor,
//       foregroundColor: foregroundColor,
//       elevation: elevation,
//     );
//   }
// }

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  const CustomAppBarWidget({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.centerTitle,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.flexibleSpace,
  });

  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool? centerTitle;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final Widget? flexibleSpace;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return (ResponsiveLayoutClass.isMobile(context))
        // is mobile
        ? AppBar(
            flexibleSpace: flexibleSpace,
            title: title,
            leading: leading ??
                Builder(
                  builder: (BuildContext context) {
                    return InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(
                          16,
                        ),
                        child: SvgPicture.asset(
                          AppAsset.menublue,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                    // return IconButton(
                    //   icon: const Icon(
                    //     Icons.list_rounded,
                    //     color: AppColors
                    //         .bluecolor, // Change Custom Drawer Icon Color
                    //   ),
                    //   onPressed: () {
                    //     Scaffold.of(context).openDrawer();
                    //   },
                    //   tooltip: MaterialLocalizations.of(context)
                    //       .openAppDrawerTooltip,
                    // );
                  },
                ),
            actions: actions ??
                [
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(
                        16.0,
                      ),
                      // child: Image.asset(
                      //   AppAsset.notification,
                      //   color: AppColors.bluecolor,
                      // ),
                      child: SvgPicture.asset(
                        AppAsset.notification,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
            centerTitle: true,
            backgroundColor: AppColors.backgroundcolor,
            foregroundColor: foregroundColor,
            elevation: 10,
          )
        // in web
        : AppBar(
            flexibleSpace: flexibleSpace,
            title: title,
            leading: leading ??
                Builder(
                  builder: (BuildContext context) {
                    return SvgPicture.asset(
                      AppAsset.menublue,
                      height: 25,
                      width: 25,
                      fit: BoxFit.fill,
                    );
                  },
                ),
            actions: [
              Padding(
                padding: SizeConfig().getPadding(
                  all: 8,
                ),
                child: const AddbuttonWidget(),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  all: 8,
                ),
                child: SvgPicture.asset(
                  AppAsset.notification,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  all: 8,
                ),
                child: SvgPicture.asset(
                  AppAsset.setting,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  left: 8,
                  right: 16,
                ),
                child: const RefernowButtonwidget(),
              ),
            ],
            // centerTitle: true,
            backgroundColor: AppColors.backgroundcolor,
            foregroundColor: foregroundColor,
            elevation: 10,
          );
  }
}
