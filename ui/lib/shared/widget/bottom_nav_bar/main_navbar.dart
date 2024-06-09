import 'package:flutter/material.dart';

class MainNavbar extends StatelessWidget {
  const MainNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return BottomNavigationBar(
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: colorScheme.onBackground.withOpacity(0.5),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedFontSize: 14,
        selectedLabelStyle: textTheme.bodySmall,
        unselectedLabelStyle: textTheme.bodySmall,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.receipt), label: 'Transaksi'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box,
                color: colorScheme.primary,
                size: 30.0,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(Icons.wallet), label: 'Bajet'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.trending_up_sharp), label: 'Report'),
        ]);
  }
}
