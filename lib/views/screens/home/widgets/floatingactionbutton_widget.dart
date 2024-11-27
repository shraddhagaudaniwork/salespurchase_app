import 'package:flutter/material.dart';
import 'package:salespurchase_app/utills/app_assets.dart';
import '../../../../utills/app_colors.dart';
import '../../../../utills/static_decoration.dart';

class FloatingactionaddbuttonWidget extends StatelessWidget {
  final  void Function()? onPressed;
  const FloatingactionaddbuttonWidget({super.key,  this.onPressed});

  @override
  Widget build(BuildContext context) {
    //linear gradient in floating action button:
    return FloatingActionButton(
      heroTag: "button1",
      backgroundColor: AppColors.bluecolor,
      onPressed: onPressed,
      shape: OutlineInputBorder(
        borderRadius: circular40BorderRadius,
        borderSide: BorderSide.none,
      ),
      // child: Icon(
      //   Icons.add,
      //   size: 50,
      //   color: AppColors.white,
      // ),
      child: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.bluegradient,
              AppColors.bluecolor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.add,
          size: 50,
          color: AppColors.white,
        ),
      ),
    );
  }
}

class FloatingActionChatButtonWidget extends StatelessWidget {
  const FloatingActionChatButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: "button2",
      backgroundColor: AppColors.bluecolor,
      onPressed: () {},
      shape: OutlineInputBorder(
        borderRadius: circular40BorderRadius,
        borderSide: BorderSide.none,
      ),
      child: Image.asset(
        AppAsset.chat,
      ),
    );
  }
}
