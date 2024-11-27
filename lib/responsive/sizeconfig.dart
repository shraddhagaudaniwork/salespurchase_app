import 'package:flutter/material.dart';
import 'package:salespurchase_app/responsive/responsive.dart';

const num designWidth = 393;
const num tabDesignWidth = 600;
const num webDesignWidth = 1440;
const num designHeight = 852;
const num tabDesignHeight = 1024;
const num webDesignHeight = 1024;

class SizeConfig {
  static final SizeConfig _instance = SizeConfig._internal();

  factory SizeConfig() => _instance;

  SizeConfig._internal();

  late MediaQueryData _mediaQueryData;
  late double screenWidth;
  late double screenHeight;
  late double blockSizeHorizontal;
  late double blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth /
        // (ResponsiveLayoutClass.isTablet(context)
        //     ? tabDesignWidth
        //     :
        (ResponsiveLayoutClass.isDesktop(context)
            ? webDesignWidth
            : designWidth);
    blockSizeVertical = screenHeight /
        // ( ResponsiveLayoutClass.isTablet(context)
        //     ? tabDesignHeight
        //     :
        (ResponsiveLayoutClass.isDesktop(context)
            ? webDesignHeight
            : designHeight);
  }

  double getHorizontalSize(double px) {
    return (px * blockSizeHorizontal);
  }

  double getVerticalSize(double px) {
    return (px * blockSizeVertical);
  }

  double getFontSize(double px) {
    return (px * blockSizeHorizontal);
  }

  EdgeInsetsGeometry getPadding({
    double? all,
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    return EdgeInsets.only(
      left: getHorizontalSize(left ?? all ?? 0),
      top: getVerticalSize(top ?? all ?? 0),
      right: getHorizontalSize(right ?? all ?? 0),
      bottom: getVerticalSize(bottom ?? all ?? 0),
    );
  }

  double getSize(double px) {
    var horizontalSize = getHorizontalSize(px);
    var verticalSize = getVerticalSize(px);
    // if (Responsive.isTablet(mainKey.currentContext!)) {
    //   return (horizontalSize < verticalSize ? horizontalSize : verticalSize)
    // }
    return horizontalSize < verticalSize ? horizontalSize : verticalSize;
  }

  double getIconSize(double px) {
    return getHorizontalSize(px);
  }
}
