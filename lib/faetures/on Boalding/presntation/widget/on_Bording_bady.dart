import 'package:flutter/cupertino.dart';
import 'package:fruitsmarket/core/utils/size_config.dart';
import 'package:fruitsmarket/core/widget/customgeneralbuttin.dart';

class OnBordingBady extends StatelessWidget {
  const OnBordingBady({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          //top: MediaQuery.of(context).size.height*.1,
          top: SizeConfig.defaultSize! *10,
          right: SizeConfig.defaultSize!*3,
          child: Text(
            'Skip',
            style: TextStyle(
              color: Color(0xff0A0000),
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        Positioned(
          top: SizeConfig.defaultSize! *20,
          right: SizeConfig.defaultSize! *30,
          child: Text("data",
            style: TextStyle(
              color: Color(0xff0A0000),
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
              ),
        ),
        Positioned(
            left: SizeConfig.defaultSize!*10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 20,
            child: CustomGenralButtin()
        ),


      ],
    );
  }
}
