import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/common/functions/text_style_of_context.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/screens/home_sceen/bloc/home_page_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class AlertDialogConectionError extends StatelessWidget {
  const AlertDialogConectionError({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            alignment: Alignment.center,
            child: AlertDialog(
              title: Text(
                "Something went wrong",
                style: themeBasedStyle(themeProvider, AppStyleText.mainText),
                //AppStyleText.mainText,
              ),
              content: SingleChildScrollView(
                  child: ListBody(
                children: [
                  Text("Tap to try again!",
                      style: themeBasedStyle(
                          themeProvider, AppStyleText.comentText))
                ],
              )),
              actions: const [RetryButton()],
            ),
          ),
        ]);
  }
}

class RetryButton extends StatelessWidget {
  const RetryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Получаем доступ к Bloc
    final homePageBloc = BlocProvider.of<HomePageBloc>(context);

    return ElevatedButton(
      onPressed: () {
        homePageBloc.add(HomePageFetchTopHeadlines());
      },
      child: const Text('Retry'),
    );
  }
}
