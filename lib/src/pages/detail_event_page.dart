import 'package:flutter/material.dart';
import 'package:myicclyon/src/utils/constants.dart';

class DetailEventPage extends StatelessWidget {
  const DetailEventPage({
    super.key,
    required this.coverImageUrl,
  });
  final String coverImageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: ColorsConstant.vividPurple,
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: Text(
                "Dieu t'a fait des prommesses: à toi d'en réclamer la manifestation !"
                    .toUpperCase(),
                textAlign: TextAlign.start,
                maxLines: 4,
                style: TextStyle(
                    fontSize: FontSizeConstants.medium,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Text(
                "4 Septembre 2022 - Pasteur Serge AZEBAZE",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: FontSizeConstants.small,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, left: 20.0, right: 10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: ColorsConstant.vividCyanBlue,
                    size: 40.0,
                  ),
                  Expanded(
                    child: Text(
                      "98 rue Alexandre Dumas, 69120 Vaulx-En-Vélin, France",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: FontSizeConstants.small,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
