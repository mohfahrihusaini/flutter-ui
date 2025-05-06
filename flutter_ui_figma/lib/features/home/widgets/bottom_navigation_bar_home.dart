import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_figma/features/cart/cart_page.dart';


class BottomNavbarHome extends StatefulWidget {
  const BottomNavbarHome({super.key});

  @override
  State<BottomNavbarHome> createState() => _BottomNavbarHomeState();
}

class _BottomNavbarHomeState extends State<BottomNavbarHome> {
  List<Map<String, dynamic>> menuItems = [
    {
      "title": "Home",
      "icon": "assets/icons/home.svg",
    },
    {
      "title": "Chart",
      "icon": "assets/icons/cart.svg",
    },
    {
      "title": "Favorites",
      "icon": "assets/icons/favorite.svg",
    },
    {
      "title": "Account",
      "icon": "assets/icons/profile.svg",
    },
  ];

  int _selectedItem = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedItem = index;
  });

  // Navigasi ke halaman sesuai index
  if (index == 1) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CartPage()),
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromARGB(255, 115, 79, 79),
      showUnselectedLabels: false,
      showSelectedLabels: false,
      unselectedItemColor: Colors.black87,
      elevation: 32,
      type: BottomNavigationBarType.fixed,
      items: menuItems
          .map(
            (item) => BottomNavigationBarItem(
              icon: SvgPicture.asset(item["icon"]),
              label: item["title"],
              activeIcon: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                ),
                child: SvgPicture.asset(
                  item["icon"],
                  colorFilter:
                      const ColorFilter.mode(Color.fromARGB(255, 88, 77, 77), BlendMode.srcIn),
                ),
              ),
            ),
          )
          .toList(),
      currentIndex: _selectedItem,
      selectedItemColor: Colors.white,
      onTap: _onItemTapped,
    );
  }
} 