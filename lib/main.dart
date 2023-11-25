import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_tasc/common/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/provider/language_provider.dart';
import 'package:flutter_app_tasc/l10n/l10n.dart';
import 'package:flutter_app_tasc/screens/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Прозрачная панель состояния
      statusBarIconBrightness: Brightness.dark, // тёмные иконки
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LanguageProvider(),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              AppLocalizations.delegate, // add this code
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate
            ],
            supportedLocales: L10n.all,
            title: AppLocalizations.of(context)?.title ?? '',
            locale: Provider.of<LanguageProvider>(context).locale,
            theme: ThemeData(
              scaffoldBackgroundColor: AppClor.background,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              primarySwatch: Colors.blue,
            ),
            home: const SplashScreen(),
          );
        });
  }
}
