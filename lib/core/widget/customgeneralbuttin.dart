import 'package:flutter/cupertino.dart';
import 'package:fruitsmarket/core/utils/appcolors.dart';
import 'package:fruitsmarket/core/utils/size_config.dart';

class CustomGenralButtin extends StatelessWidget {
  const CustomGenralButtin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.defaultSize,
      decoration: BoxDecoration(
        color: AppColors.prymarylightmod,
        //borderRadius: BorderRadius.all(Radius.circular(20)),
        shape: BoxShape.circle,
      ),

      child: Center(
        child: Text(
          'NEXT',
          style: TextStyle(
            color: AppColors.blackcolor,
            fontSize: 30,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
