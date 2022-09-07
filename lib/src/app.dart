import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myicclyon/src/actions_page.dart';
import 'package:myicclyon/src/home_page.dart';

import 'app_bar_component.dart';

class App extends StatefulWidget {
  final Map<String, IconData> bnbLabelsAndIcons;
  const App({
    super.key,
    required this.bnbLabelsAndIcons,
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
    return Scaffold(
      appBar: AppBarComponent(
        title: widget.bnbLabelsAndIcons.keys.elementAt(selectedIndexPage),
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
  }
}
