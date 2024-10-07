import 'package:app/pages/body_stats.dart';
import 'package:app/pages/diet_plan.dart';
import 'package:app/pages/edit_profile_page.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/image_preview.dart';
import 'package:app/pages/login_page.dart';
import 'package:app/pages/plans_page.dart';
import 'package:app/pages/profile_page.dart';
import 'package:app/pages/scanner_page.dart';
import 'package:app/pages/startup_page.dart';
import 'package:app/utilities/routes.dart';
import 'package:app/utilities/themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top,
      ],
    );
    return MaterialApp(
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const Home();
            } else {
              return const StartupPage();
            }
          }),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppThemes.lightTheme(context),
      initialRoute: "/",
      routes: {
        // "/": (context) => const StartupPage(),
        AppRoutes.startupRoute: (context) => const StartupPage(),
        AppRoutes.loginRoute: (context) => const LoginPage(),
        AppRoutes.homeRoute: (context) => const Home(),
        AppRoutes.bodystatsRoute: (context) => const BodyStatsPage(),
        AppRoutes.dietplanRoute: (context) => const DietPlanPage(),
        AppRoutes.profilepageRoute: (context) => const ProfilePage(),
        AppRoutes.editprofileRoute: (context) => const EditProfilePage(),
        AppRoutes.plansRoute: (context) => const PlansPage(),
        AppRoutes.scannerRoute: (context) => const ScannerPage(),
        AppRoutes.imagepreviewRoute: (context) => const ImagePreviewPage(),
      },
    );
  }
}
