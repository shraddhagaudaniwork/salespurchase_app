import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';
import 'package:salespurchase_app/routes/route_name.dart';
import 'package:salespurchase_app/routes/routes_page.dart';

GlobalKey mainKey = GlobalKey();

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(mainKey.currentState?.context ?? context);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        key: mainKey,
        debugShowCheckedModeBanner: false,
        // initialRoute: RoutesName.homepage,
        initialRoute: RoutesName.homecomponent,
        getPages: RoutesPage.pages,
      ),
    );
  }
}


//todo:
// change image png to svg: done
// remove notch on drawer:
// responsive intro login and sign up screen:
// onboarding in flutter: done
//manage svg image: done
