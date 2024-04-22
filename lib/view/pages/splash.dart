import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gluco_guide/view/pages/doctor/doctor_home_page.dart';
import 'package:gluco_guide/view/pages/patient/main_page.dart';
import '../../gen/assets.gen.dart';
import '../../providers/doctor/auth/providers/doctor_auth_state_notifier_provider.dart';
import '../../providers/local/doctor_local_provider.dart';
import '../../providers/local/patient_local_provider.dart';
import 'doctor/admin_page.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends  ConsumerState<SplashPage> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // Set the duration for the animation
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);

    _animationController.forward().then((value) {
      var patientToken = ref.read(patientTokenProvider);
      var doctorToken = ref.read(doctorTokenProvider);
      /// Neither Doctor nor Patient have any tokens
       if(patientToken == null && doctorToken == null)
         {
           Navigator.pushReplacement(
             context,
             MaterialPageRoute(builder: (context) => const AdminPage()),
           );
         }
       /// Patient has token
       else if(patientToken != null && doctorToken == null)
         {
           Navigator.pushReplacement(
             context,
             MaterialPageRoute(builder: (context) => const MainScreen(title: "Patient")),
           );
         }
       ///Doctor has token
       else if(patientToken == null && doctorToken != null){
         Navigator.pushReplacement(
           context,
           MaterialPageRoute(builder: (context) => const DoctorHomePage()),
         );
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
    return MaterialApp(
      home: Scaffold(
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
      ),
    );
  }
}

