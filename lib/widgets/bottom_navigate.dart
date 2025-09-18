import 'package:flutter/material.dart';

class BottomNavigate extends StatefulWidget {
  const BottomNavigate({super.key});

  @override
  State<BottomNavigate> createState() => _BottomNavigateState();
}

class _BottomNavigateState extends State<BottomNavigate> {
  final _navigates = [
    Navigate(
      title: '首页',
      icon: "assets/images/h1.png",
      selectedIcon: "assets/images/h1_selected.png",
      isSelected: true,
    ),
    Navigate(
      title: '消息',
      icon: "assets/images/m1.png",
      selectedIcon: "assets/images/m1_selected.png",
      isSelected: false,
    ),
    Navigate(
      title: '我的',
      icon: "assets/images/m2.png",
      selectedIcon: "assets/images/m2_seleted.png",
      isSelected: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color(0xFFFFFFFF),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _navigates.map((e) => _buildNavigetorButton(e)).toList(),
      ),
    );
  }

  Widget _buildNavigetorButton(Navigate item) {
    return SizedBox(
      height: 49,
      child: GestureDetector(
        child: Column(
          children: [
            Image(
              width: 24,
              height: 24,
              image: AssetImage(
                item.isSelected ? item.selectedIcon : item.icon,
              ),
            ),
            Text(
              item.title,
              style: TextStyle(
                fontSize: 10,
                color: item.isSelected ? Color(0xFF26C493) : Color(0xFF666666),
              ),
            ),
          ],
        ),
        onTap: () {
          setState(() {
            for (var e in _navigates) {
              e.isSelected = e == item;
            }
          });
        },
      ),
    );
  }
}

class Navigate {
  String title;
  String icon;
  String selectedIcon;
  bool isSelected;

  Navigate({
    required this.title,
    required this.icon,
    required this.selectedIcon,
    required this.isSelected,
  });
}
