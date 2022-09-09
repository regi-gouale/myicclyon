import 'package:flutter/material.dart';
import 'package:myicclyon/src/utils/constants.dart';
import 'package:sliver_tools/sliver_tools.dart';

class PersonalInfosListComponent extends StatelessWidget {
  const PersonalInfosListComponent({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(Object context) {
    return SliverStack(
      children: [
        SliverPositioned.fill(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              decoration: BoxDecoration(
                color: ColorsConstant.white,
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 8,
                    color: Colors.black26,
                  )
                ],
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            children,
          ),
        ),
      ],
    );
  }
}
