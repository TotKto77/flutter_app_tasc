import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/logic/models/models_nwes_agansi.dart';
import 'package:flutter_app_tasc/screens/source_screen.dart';

class TopChannelsWidget extends StatelessWidget {
  const TopChannelsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<AgencyModel> topAgencies =
        AgencyModel.staticAgencyList.sublist(0, 10);

    return SizedBox(
      height: 150, // Высота контейнера, чтобы вместить изображения и текст
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topAgencies.length + 1, // +1 для кнопки "More"
        itemBuilder: (context, index) {
          if (index < topAgencies.length) {
            // Элементы списка
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(topAgencies[index].imageUrl),
                    radius: 30,
                  ),
                  const SizedBox(height: 8),
                  Text(topAgencies[index].name, style: AppStyleText.titleText),
                  const SizedBox(height: 8),
                  Text(topAgencies[index].type, style: AppStyleText.comentText),
                ],
              ),
            );
          } else {
            return Container(
              padding: const EdgeInsets.only(right: 24),
              alignment: Alignment.center,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.white,
                  size: 50,
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SuorceScreen()),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
