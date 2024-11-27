import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveLayoutClass extends StatelessWidget {
  const ResponsiveLayoutClass({
    super.key,
    required this.mobileView,
    //required this.tabletView,
    required this.desktopView,
  });

  final Widget mobileView;
  // final Widget tabletView;
  final Widget desktopView;

  //OLD RTO CHALLAN APP:
  // static bool isMobile(BuildContext context) =>
  //     MediaQuery.of(context).size.width < 600;
  //
  // static bool isTablet(BuildContext context) =>
  //     MediaQuery.of(context).size.width < 601 &&
  //         MediaQuery.of(context).size.width >= 1000;
  //
  // static bool isDesktop(BuildContext context) =>
  //     MediaQuery.of(context).size.width > 1000;

  //NEW CODE v:
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  // static bool isTablet(BuildContext context) =>
  //     MediaQuery.of(context).size.width >= 600 &&
  //     MediaQuery.of(context).size.width < 1000;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1000;

  @override
  Widget build(BuildContext context) {
     final Size size = MediaQuery.of(context).size;
    if (size.width >= 1000) {
      return desktopView;
    }
    // else if (size.width >= 600) {
    //   return tablet ?? mobile;
    // }
    else {
      return mobileView;
    }
  }
    // return Scaffold(
    //   body: LayoutBuilder(
    //     builder: (context, constraints) {
    //       if (constraints.maxWidth <= 600) {
    //         return mobileView;
    //       }
    //       // else if (constraints.maxWidth > 600 &&
    //       //     constraints.maxWidth <= 1000) {a
    //       //   return tabletView;
    //       // }
    //       else {
    //         return desktopView;
    //       }
    //     },
    //   ),
    // );
  }

