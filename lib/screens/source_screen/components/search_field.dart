import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/provider/theme_provider.dart';
import 'package:flutter_app_tasc/screens/source_screen/bloc/source_screen_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchField extends StatelessWidget {
  final ThemeProvider themeProvider;
  const SearchField({super.key, required this.themeProvider});

  @override
  Widget build(BuildContext context) {
    final debouncer = Debouncer(milliseconds: 500);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: TextField(
        onChanged: (text) {
          debouncer.run(() {
            BlocProvider.of<SourceScreenBloc>(context)
                .add(SourceScreenUpdateFilter(filterText: text));
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: themeProvider.isDarkMode ? Colors.white : Colors.black,
          ),
          hintText: 'Поиск...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.blue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
          contentPadding: const EdgeInsets.all(12),
        ),
      ),
    );
  }
}

class Debouncer {
  final int milliseconds;
  Timer? _timer;

  Debouncer({required this.milliseconds});

  run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
