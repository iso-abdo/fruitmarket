import 'package:flutter/material.dart';
import 'package:fruitsmarket/core/utils/size_config.dart';
import 'package:fruitsmarket/faetures/on%20Boalding/presntation/on_Boarding_View.dart'; // أضفت هذه لاستخدام MaterialPageRoute

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    fadingAnimation = Tween<double>(
      begin: 0.2,
      end: 1,
    ).animate(animationController!);

    animationController?.repeat(reverse: true);

    goYoNextView(); // استدعاء دالة الانتقال
  }

  @override
  void dispose() {
    animationController?.dispose(); // تصحيح الاسم هنا
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        FadeTransition(
          opacity: fadingAnimation!,
          child: const Text(
            '@i MARKT',
            style: TextStyle(
              color: Color(0xff0A0000),
              fontSize: 64,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const Spacer(),
        Image.asset('assets/images/splash_viwe.png'),
      ],
    );
  }

  // نقل الدالة لداخل الكلاس
  void goYoNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      // أضف كود الانتقال هنا، مثال:
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingView()),
      );
    });
  }
}
