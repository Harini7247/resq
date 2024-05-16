import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resq/firebase_options.dart';
import 'package:resq/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:resq/src/utils/themes/theme.dart';

import 'repository/authentication_repository/authentication_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ). then((value)=>Get.put(AuthenticationRepository()));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme:TAppTheme.lightTheme,
      darkTheme:TAppTheme.darkTheme,
      themeMode:ThemeMode.system,
      debugShowCheckedModeBanner:false,
      home:SplashScreen()
    );
  }
}

