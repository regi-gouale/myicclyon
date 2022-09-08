import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myicclyon/src/utils/constants.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              height: 200,
              color: ColorsConstant.vividPurple,
            ),
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return GestureDetector(
                onTap: () {
                  if (kDebugMode) {
                    print("Click on event: $index");
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 5.0,
                  ),
                  child: Card(
                    elevation: 3,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.purple[100 * (index % 9)],
                          borderRadius: BorderRadius.circular(5)),
                      child: Text('Action $index'),
                    ),
                  ),
                ),
              );
            },
            childCount: 7,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            childAspectRatio: 1.5,
          ),
        ),
      ],
    );
  }
}
