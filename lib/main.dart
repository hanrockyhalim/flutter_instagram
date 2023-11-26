import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_instagram/responsive/mobile_screen_layout.dart';
import 'package:flutter_instagram/responsive/responsive_layout_screen.dart';
import 'package:flutter_instagram/responsive/web_screen_layout.dart';
import 'utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDJ5czjrDJq9tG2oeUN5GyJ4MnxL94GVzA",
            appId: "1:165030086104:web:ecf217a878b528926f9ead",
            messagingSenderId: "165030086104",
            projectId: "instagram-clone-b4f47",
            storageBucket: "instagram-clone-b4f47.appspot.com"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
          WebScreenLayout: WebScreenLayout(),
          MobileScreenLayout: MobileScreenLayout()),
    );
  }
}
