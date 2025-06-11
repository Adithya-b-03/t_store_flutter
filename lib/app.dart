import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/theme/theme.dart';
import 'package:t_store/features/authentication/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  // The URL of your complete product
  static final Uri _productUri = Uri.parse('https://codingwitht.com/ecommerce-app-with-admin-panel/');

  Future<void> _launchProductLink() async {
    if (!await launchUrl(_productUri, mode: LaunchMode.externalApplication)) {
      // handle error, e.g. show snackbar
      debugPrint('Could not launch $_productUri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
