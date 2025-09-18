import 'package:flutter/material.dart';

import '../widgets/bottom_navigate.dart';

class MeView extends StatefulWidget {
  const MeView({super.key});

  @override
  State<MeView> createState() => _MeViewState();
}

class MeNavigateItem {
  final String title;
  final String icon;

  MeNavigateItem({required this.title, required this.icon});
}

class _MeViewState extends State<MeView> {
  final _items = [
    MeNavigateItem(title: "我的挂号", icon: "assets/images/m_n_1.png"),
    MeNavigateItem(title: "我的咨询", icon: "assets/images/m_n_2.png"),
    MeNavigateItem(title: "我的处方", icon: "assets/images/m_n_3.png"),
    MeNavigateItem(title: "药品订单", icon: "assets/images/m_n_4.png"),
    MeNavigateItem(title: "我的医生", icon: "assets/images/m_n_5.png"),
    MeNavigateItem(title: "意见反馈", icon: "assets/images/m_n_6.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F9), //  LinearGradient(colors: ),
        body: ColoredBox(
          color: Color(0xFFF5F5F9),
          child: Column(
            children: [
              Container(
                height: 56,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  spacing: 10,
                  children: [
                    SizedBox(
                      height: 56,
                      width: 56,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(28),
                        child: Container(
                          height: 56,
                          width: 56,
                          color: Color(0xFFFFFFFF),
                          child: Image(
                            image: AssetImage('assets/images/m_avatar.png'),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '游客0154',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF333333),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 56,
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  color: Color(0xFF26C493),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        '常用就诊人',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      icon: Image(
                        width: 24,
                        height: 24,
                        image: AssetImage('assets/images/m_a_1.png'),
                      ),
                    ),
                    VerticalDivider(),
                    TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        '我的问诊',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      icon: Image(
                        width: 24,
                        height: 24,
                        image: AssetImage('assets/images/m_a_2.png'),
                      ),
                    ),
                  ],
                ),
              ),
              ..._items.map((e) => _buildNavItem(e)),

              SizedBox(height: 10),
              _buildNavItem(
                MeNavigateItem(icon: 'assets/images/m_n_7.png', title: '清除缓存'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigate(),
      ),
    );
  }

  Widget _buildNavItem(MeNavigateItem item) {
    return Container(
      height: 56,
      color: Color(0xFFFFFFFF),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(item.icon)),
          Expanded(
            child: Text(
              item.title,
              style: TextStyle(color: Color(0xFF333333), fontSize: 14),
            ),
          ),
          Icon(Icons.arrow_right_outlined, color: Color(0xFF999999)),
        ],
      ),
    );
  }
}
