import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/logic/models/models_nwes_agansi.dart';

class AgencyDetailScreen extends StatelessWidget {
  final AgencyModel agency;

  const AgencyDetailScreen({super.key, required this.agency});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(agency.imageUrl),
            centerTitle: true,
            title: Text(
              agency.name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
    //  SingleChildScrollView(
    //   padding: const EdgeInsets.all(16.0),
    //   child: Column(
    //     children: <Widget>[
    //       // Вставьте изображение агентства, если оно доступно
    //       Image.asset(agency.imageUrl),
    //       SizedBox(height: 16),
    //       // Название агентства
    //       Text(
    //         agency.name,
    //         style: TextStyle(
    //           fontSize: 24,
    //           fontWeight: FontWeight.bold,
    //         ),
    //       ),
    //       SizedBox(height: 8),
    //       // Тип агентства
    //       Text(
    //         agency.type,
    //         style: TextStyle(
    //           fontSize: 18,
    //           fontStyle: FontStyle.italic,
    //         ),
    //       ),
    //       // Здесь можно добавить больше информации о агентстве
    //     ],
    //   ),
    // ),
  }
}
