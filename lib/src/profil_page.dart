import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myicclyon/src/constants.dart';
import 'package:sliver_tools/sliver_tools.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          "Fiche STAR",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: () {
                if (kDebugMode) {
                  print("Changer la photo de profil");
                }
              },
              child: const CircleAvatar(
                radius: 60.0,
                child: Text(
                  "RG",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: Text(
                  "Regi GOUALE",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: FontSizeConstants.medium,
                  ),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(
              thickness: 2.0,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 28.0,
              ),
              child: Text(
                "Informations Personnelles",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: FontSizeConstants.small,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: ColorsConstant.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 1.0,
                                ),
                                child: Text(
                                  "Régi GOUALE",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 1.0,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  if (kDebugMode) {
                                    print("click on name infos");
                                  }
                                },
                                icon: const Icon(Icons.person),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 1.0,
                                ),
                                child: Text(
                                  "06 12 34 57 89",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 1.0,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  if (kDebugMode) {
                                    print("click on name infos");
                                  }
                                },
                                icon: const Icon(Icons.phone),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 1.0,
                                ),
                                child: Text(
                                  "regi.gouale@icclyon.fr",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 1.0,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  if (kDebugMode) {
                                    print("click on name infos");
                                  }
                                },
                                icon: const Icon(Icons.mail),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 1.0,
                                ),
                                child: Text(
                                  "01/01/1990",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 1.0,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  if (kDebugMode) {
                                    print("click on birthday infos");
                                  }
                                },
                                icon: const Icon(Icons.date_range_rounded),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 28.0,
                top: 20.0,
                bottom: 10.0,
              ),
              child: Text(
                "Départements",
                style: TextStyle(
                  fontSize: FontSizeConstants.small,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverStack(
            insetOnOverlap: false,
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
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 38.0),
                          child: Row(
                            children: [
                              Text(
                                "Département ${index + 1}",
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                      ],
                    ),
                  );
                }, childCount: 3),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: const Icon(
            Icons.mode_edit_sharp,
            size: 30.0,
          ),
        ),
      ),
    );
  }
}
