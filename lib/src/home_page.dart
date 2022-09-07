import 'package:boxy/slivers.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Cultes",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: FontSizeConstants.large,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverCard(
            elevation: 5,
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 4.0,
            ),
            // color: ColorsConstant.vividPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                ((context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      height: 150,
                    ),
                  );
                }),
                childCount: 1,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Évènements",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: FontSizeConstants.large,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    height: 100,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.purple[100 * (index % 9)],
                    ),
                    child: Text('Grid Item $index'),
                  ),
                );
              },
              childCount: 5,
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
              childAspectRatio: 1.0,
            ),
          )
        ],
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
