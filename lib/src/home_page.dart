import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myicclyon/src/app_bar_component.dart';
import 'package:myicclyon/src/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(title: title),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Cultes",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: FontSizeConstants.medium,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  if (kDebugMode) {
                    print("culte d'action de grâces");
                  }
                },
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorsConstant.vividPurple,
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Évènements",
                  style: TextStyle(
                    fontSize: FontSizeConstants.medium,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // GridView.count(crossAxisCount: 2)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Accueil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_to_action),
            label: "Actions",
          ),
        ],
      ),
    );
  }
}
