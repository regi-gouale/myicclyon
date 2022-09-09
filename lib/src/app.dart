import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myicclyon/src/models/person_model.dart';
import 'package:myicclyon/src/pages/actions_page.dart';
import 'package:myicclyon/src/pages/home_page.dart';

import 'components/app_bar_component.dart';

class App extends StatefulWidget {
  final Map<String, IconData> bnbLabelsAndIcons;
  final String token;
  const App({
    super.key,
    required this.bnbLabelsAndIcons,
    required this.token,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int selectedIndexPage = 0;

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  List<BottomNavigationBarItem> buildBNBItems(Map<String, IconData> map) {
    List<BottomNavigationBarItem> list = [];
    map.forEach((label, icon) {
      list.add(BottomNavigationBarItem(icon: Icon(icon), label: label));
    });
    return list;
  }

  Widget buildPage() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        setState(() {
          selectedIndexPage = index;
        });
      },
      children: const [
        HomePage(title: "Accueil"),
        ActionsPage(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      selectedIndexPage = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      selectedIndexPage = index;
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(widget.bnbLabelsAndIcons.keys.elementAt(selectedIndexPage));
    }
    return FirestoreBuilder<PersonModelDocumentSnapshot>(
      ref: personModelRef.doc(widget.token),
      builder: (
        BuildContext context,
        AsyncSnapshot<PersonModelDocumentSnapshot> snapshot,
        Widget? child,
      ) {
        if (snapshot.hasError) {
          return const Scaffold(
            body: Text("Something went wrong!"),
          );
        }
        if (!snapshot.hasData) {
          return const Scaffold(
            body: Text("Loading data..."),
          );
        }
        PersonModelDocumentSnapshot documentSnapshot = snapshot.requireData;

        if (!documentSnapshot.exists) {
          return const Scaffold(
            body: Text("Person does not exist."),
          );
        }

        PersonModel personModel = documentSnapshot.data!;
        return Scaffold(
          appBar: AppBarComponent(
            title: widget.bnbLabelsAndIcons.keys.elementAt(selectedIndexPage),
            person: personModel,
          ),
          body: buildPage(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndexPage,
            onTap: (index) {
              bottomTapped(index);
            },
            items: buildBNBItems(widget.bnbLabelsAndIcons),
          ),
        );
      },
    );
  }
}
