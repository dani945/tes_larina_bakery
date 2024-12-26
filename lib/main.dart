import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'i_theme_color.dart';
import 'routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.initial,
      getPages: AppPages.pages,
      theme: ThemeData(
        primarySwatch: IThemeColor.colorWhite(),
        useMaterial3: false,
      ),
      // builder: EasyLoading.init(),
    );
  }
}
