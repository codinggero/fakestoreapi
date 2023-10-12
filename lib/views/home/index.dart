import 'package:flutter/material.dart';
import '/package.dart';

export 'widgets/index.dart';

class Index extends StatefulWidget {
  static String routeName = "/Index";

  const Index({super.key});

  @override
  State<Index> createState() => IndexState();
}

class IndexState extends State<Index> {
  int currentIndex = 0;

  final screens = [
    const Home(),
    const Cart(),
    const Orders(),
    const Wallet(),
    const Profile(),
  ];

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Fonts.house.light),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Fonts.cart_shopping.light),
      label: 'Cart',
    ),
    BottomNavigationBarItem(
      icon: Icon(Fonts.bags_shopping.light),
      label: 'Orders',
    ),
    BottomNavigationBarItem(
      icon: Icon(Fonts.wallet.light),
      label: 'Wallet',
    ),
    BottomNavigationBarItem(
      icon: Icon(Fonts.user.light),
      label: 'Profile',
    ),
  ];

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        onTap: ((value) => setState(() => currentIndex = value)),
        currentIndex: currentIndex,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 10,
        ),
        selectedItemColor: const Color(0xFF212121),
        unselectedItemColor: const Color(0xFF9E9E9E),
      ),
    );
  }
}
