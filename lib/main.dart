import 'package:flutter/material.dart';
import 'package.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Services.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    App(context);

    return GetMaterialApp(
      theme: App.theme,
      title: App.title,
      debugShowCheckedModeBanner: false,
      initialBinding: App.initialBinding,
      initialRoute: App.initialRoute,
      getPages: App.getPages,
      defaultTransition: App.defaultTransition,
      translations: App.translations,
      locale: App.locale,
    );
  }
}
