import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigate extends StatefulWidget {
  const BottomNavigate({super.key});

  @override
  State<BottomNavigate> createState() => _BottomNavigateState();
}

class _BottomNavigateState extends State<BottomNavigate> {
  final _navigates = [
    Navigate(
      title: '首页',
      route: '/',
      icon: "assets/images/h1.png",
      selectedIcon: "assets/images/h1_selected.png",
      isSelected: true,
    ),
    Navigate(
      title: '消息',
      route: '/message',
      icon: "assets/images/m1.png",
      selectedIcon: "assets/images/m1_selected.png",
      isSelected: false,
    ),
    Navigate(
      title: '我的',
      route: '/me',
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
        children: _navigates
            .map((e) => _buildNavigetorButton(context, e))
            .toList(),
      ),
    );
  }

  Widget _buildNavigetorButton(BuildContext context, Navigate item) {
    final route = GoRouter.of(context).routerDelegate.currentConfiguration.last;
    final isSelected = route.matchedLocation == item.route;
    return SizedBox(
      height: 49,
      child: GestureDetector(
        child: Column(
          children: [
            Image(
              width: 24,
              height: 24,
              image: AssetImage(
                isSelected ? item.selectedIcon : item.icon,
              ),
            ),
            Text(
              item.title,
              style: TextStyle(
                fontSize: 10,
                color: isSelected ? Color(0xFF26C493) : Color(0xFF666666),
              ),
            ),
          ],
        ),
        onTap: () {
          context.go(item.route);
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
  String route;

  Navigate({
    required this.title,
    required this.route,
    required this.icon,
    required this.selectedIcon,
    required this.isSelected,
  });
}
