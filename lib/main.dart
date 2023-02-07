import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/Bindings/getpages.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/Bindings/initialbinding.dart';
import 'package:flutter_pharmacy_mobile_app/view/Auth/Login_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(DevicePreview(
    
    enabled: !kReleaseMode,
    builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        builder: EasyLoading.init(),
        debugShowCheckedModeBanner: false,
        title: 'Pharmacy Mobile App',
        getPages: GetPageList.pages,
        initialBinding: InitialBindings(),
        initialRoute: LogInView.routeName);
  }
}
