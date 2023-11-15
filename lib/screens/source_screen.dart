import 'package:flutter/material.dart';

class SuorceScreen extends StatelessWidget {
  const SuorceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sourse'),
      ),
      body: Center(
        child: Text(
          'Sourse Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
