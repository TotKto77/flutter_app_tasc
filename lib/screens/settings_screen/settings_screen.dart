import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_tasc/common/widgets/languages_picker_widget.dart';

class SettingSceen extends StatelessWidget {
  const SettingSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Seting Screen"),
      ),
      body: Container(
        color: Colors.blue,
        child: LanguagePickerWidget(),
      ),
    );
  }
}
