import 'package:capsule/src/core/config/routes.dart';
import 'package:capsule/src/features/auth/login/login_binding.dart';
import 'package:capsule/src/features/auth/otp/otp_binding.dart';
import 'package:capsule/src/features/auth/profile_info/profile_info_binding.dart';
import 'package:capsule/src/features/auth/signup/signup_binding.dart';
import 'package:capsule/src/features/home/edit_profile/edit_profile_binding.dart';
import 'package:capsule/src/features/home/home/home_binding.dart';
import 'package:capsule/src/features/home/navbar/navbar.dart';
import 'package:capsule/src/features/home/navbar/navbar_binding.dart';
import 'package:capsule/src/features/quiz/quiz_binding.dart';
import 'package:capsule/src/features/resullt_analysis/result_analysis_binding.dart';
import 'package:capsule/src/features/review_answere/review_answer_binding.dart';
import 'package:capsule/src/features/test/test_binding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/smart_management.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

   FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (BuildContext context, Widget? child) {
      return
        GetMaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
                fontFamily: "Open Sans"
            ),
          debugShowCheckedModeBanner: false,
          smartManagement: SmartManagement.full,
          initialRoute: AppRoutes.getEditProfileRoute(),
          // !firstLogin ? AppRoutes.getLoginRoute() : AppRoutes.getIntroRoute(),
          initialBinding: EditProfileBindind(),
          // !firstLogin ? LoginBinding() : IntroBinding(),
          getPages: AppRoutes.getPages(),
          onGenerateRoute: (settings) => AppRoutes.generateRoute(settings),
        );
    });
  }
}

