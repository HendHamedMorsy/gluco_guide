import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/data/repository/locale_repo/hive_manager.dart';
import 'package:gluco_guide/gen/assets.gen.dart';
import 'package:gluco_guide/view/pages/doctor/admin_page.dart';
import 'package:gluco_guide/view/pages/doctor/doctor_home_page.dart';
import 'package:gluco_guide/view/pages/patient/main_page.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);

    _animationController.forward().then((value) async {
      var patientToken = await HiveManager.instance()
          .getLocalUnSecuredPatientTokenFromStorage();
      var doctorToken = await HiveManager.instance()
          .getLocalUnSecuredDoctorTokenFromStorage();
      if (patientToken == null && doctorToken == null) {
        context.navigator.pushReplacement(MaterialPageRoute(
          builder: (context) => const AdminPage(),
        ));
      } else if (patientToken != null && doctorToken == null) {
        context.navigator.pushReplacement(MaterialPageRoute(
            builder: (context) => const MainScreen(title: "Patient")));
      } else if (patientToken == null && doctorToken != null) {
        context.navigator.pushReplacement(MaterialPageRoute(
          builder: (context) => const DoctorHomePage(),
        ));
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) {
            return Opacity(
              opacity: _animation.value,
              child: Image.asset(Assets.images.logo.path),
            );
          },
        ),
      ),
    );
  }
}
