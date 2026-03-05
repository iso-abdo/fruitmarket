import 'package:flutter/material.dart';
import 'package:fruitsmarket/core/utils/appcolors.dart';
import 'package:fruitsmarket/faetures/splash_Screen/presntation/widget/splash_bady.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff46FF5B),
      backgroundColor: AppColors.prymarylightmod,
      body: SplashBody(),
    );
  }
}
