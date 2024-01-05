import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_tasc/common/networking/dio/dio_client.dart';
import 'package:flutter_app_tasc/common/provider/bottom_navigation_bar_provider.dart';
import 'package:flutter_app_tasc/common/provider/language_provider.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/common/repo/repository.dart';
import 'package:flutter_app_tasc/common/widgets/navigator.dart';
import 'package:flutter_app_tasc/l10n/l10n.dart';
import 'package:flutter_app_tasc/screens/agency_detail_screen/bloc/agency_detailed_bloc.dart';
import 'package:flutter_app_tasc/screens/home_sceen/bloc/home_page_bloc.dart';
import 'package:flutter_app_tasc/screens/search_screen/bloc/search_bloc.dart';
import 'package:flutter_app_tasc/screens/source_screen/bloc/source_screen_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LanguageProvider()),
          ChangeNotifierProvider(create: (_) => ThemeProvider()),
          ChangeNotifierProvider(create: (_) => BottomNavigationBarProvider()),
        ],
        builder: (context, child) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            navigatorObservers: [routeObserver],
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate
            ],
            supportedLocales: L10n.all,
            title: AppLocalizations.of(context)?.title ?? '',
            locale: Provider.of<LanguageProvider>(context).locale,
            themeMode: themeProvider.themeMode,
            theme: themeProvider.lightTheme,
            darkTheme: themeProvider.darkTheme,
            home: MultiRepositoryProvider(
              providers: [
                RepositoryProvider(create: (context) => DioClient()),
                RepositoryProvider(
                  create: (context) => Repository(
                    dioClient: RepositoryProvider.of<DioClient>(context),
                  ),
                ),
              ],
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => HomePageBloc(
                      RepositoryProvider.of<Repository>(context),
                    )..add(HomePageFetchTopHeadlines()),
                  ),
                  BlocProvider(
                    create: (context) => AgencyDetailedBloc(
                      RepositoryProvider.of<Repository>(context),
                    )..add(AgencyDetailedFetchData(sourceId: '')),
                  ),
                  BlocProvider(
                    create: (context) => SourceScreenBloc(
                      RepositoryProvider.of<Repository>(context),
                    )..add(SourceScreenFetchData()),
                  ),
                  BlocProvider(
                      create: (context) => SearchBloc(
                            RepositoryProvider.of<Repository>(context),
                          )),
                ],
                child: const MyBottomNavigation(),
              ),
            ),
          );
        });
  }
}
