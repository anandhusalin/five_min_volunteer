import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidgets extends StatelessWidget {
  const BottomNavigationWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
          return ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: primaryColor,
                selectedItemColor: secondaryColor,
                unselectedItemColor: backgroundColor,
                currentIndex: newIndex,
                onTap: (index) {
                  indexChangeNotifier.value = index;
                },
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.list_sharp), label: ''),
                  BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: ''),
                ]),
          );
        });
  }
}
