import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets/bottom_navigate.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class NavInfo {
  final String title;
  final String icon;
  final String route;

  NavInfo({required this.title, required this.icon, required this.route});
}

class Information {
  final String content;
  final String dateTime;
  final String coverImg;

  Information({
    required this.content,
    required this.dateTime,
    required this.coverImg,
  });
}

class _HomeViewState extends State<HomeView> {
  final _navs = [
    NavInfo(title: '当日挂号', icon: 'assets/images/1.png', route: ''),
    NavInfo(title: '预约挂号', icon: 'assets/images/2.png', route: ''),
    NavInfo(title: '在线咨询', icon: 'assets/images/3.png', route: ''),
    NavInfo(title: '门诊缴费', icon: 'assets/images/4.png', route: ''),
    NavInfo(title: '检查预约', icon: 'assets/images/5.png', route: ''),
    NavInfo(title: '门诊报告', icon: 'assets/images/6.png', route: ''),
    NavInfo(title: '电子票据', icon: 'assets/images/7.png', route: ''),
    NavInfo(title: '院内导航', icon: 'assets/images/8.png', route: ''),
  ];

  final infomations = [
    Information(
      dateTime: '2025-09-18',
      content: '因为经常掏耳朵，女子患上恶性肿瘤！紧急提醒：这样掏耳朵真不行！',
      coverImg: 'assets/images/coverImg.png',
    ),
    Information(
      dateTime: '2025-09-18',
      content: '因为经常掏耳朵，女子患上恶性肿瘤！紧急提醒：这样掏耳朵真不行！',
      coverImg: 'assets/images/coverImg.png',
    ),
    Information(
      dateTime: '2025-09-18',
      content: '因为经常掏耳朵，女子患上恶性肿瘤！紧急提醒：这样掏耳朵真不行！',
      coverImg: 'assets/images/coverImg.png',
    ),
    Information(
      dateTime: '2025-09-18',
      content: '因为经常掏耳朵，女子患上恶性肿瘤！紧急提醒：这样掏耳朵真不行！',
      coverImg: 'assets/images/coverImg.png',
    ),
    Information(
      dateTime: '2025-09-18',
      content: '因为经常掏耳朵，女子患上恶性肿瘤！紧急提醒：这样掏耳朵真不行！',
      coverImg: 'assets/images/coverImg.png',
    ),
    Information(
      dateTime: '2025-09-18',
      content: '因为经常掏耳朵，女子患上恶性肿瘤！紧急提醒：这样掏耳朵真不行！',
      coverImg: 'assets/images/coverImg.png',
    ),
    Information(
      dateTime: '2025-09-18',
      content: '因为经常掏耳朵，女子患上恶性肿瘤！紧急提醒：这样掏耳朵真不行！',
      coverImg: 'assets/images/coverImg.png',
    ),
    Information(
      dateTime: '2025-09-18',
      content: '因为经常掏耳朵，女子患上恶性肿瘤！紧急提醒：这样掏耳朵真不行！',
      coverImg: 'assets/images/coverImg.png',
    ),
    Information(
      dateTime: '2025-09-18',
      content: '因为经常掏耳朵，女子患上恶性肿瘤！紧急提醒：这样掏耳朵真不行！',
      coverImg: 'assets/images/coverImg.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor:Color(0xFFB5F7E6),//  LinearGradient(colors: ),
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   title: Text('即时互联网医院'),
        // ),
        body: ColoredBox(
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: 204,
                child: Container(
                  height: 204,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    gradient: LinearGradient(
                      begin: AlignmentGeometry.topCenter,
                      end: AlignmentGeometry.bottomCenter,
                      colors: [Color(0xFFB5F7E6), Color(0xFFFFFFFF)],
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 8, 15, 0),
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        '即时互联网医院',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(color: Color(0xFFD8E3F0)),
                              gapPadding: 4,
                            ),
                            prefixIcon: Icon(Icons.search),
                            hintText: '搜索医生名称/科室',
                            hintStyle: TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 14,
                            ),
                            fillColor: Color(0xFFFFFFFF),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 148,
                        child: Image(
                          image: AssetImage('assets/images/banner.png'),
                        ),
                      ),
                      SizedBox(
                        height: 160,
                        child: GridView.count(
                          crossAxisCount: 4,
                          children: _navs.map((e) => _buildNavItem(e)).toList(),
                        ),
                      ),

                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 30,
                              padding: EdgeInsets.only(left: 12),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: Color(0xFFE1E1E6)),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '健康资讯',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextButton.icon(
                                    style: TextButton.styleFrom(
                                      foregroundColor: Color(0xFF999999),
                                      splashFactory: NoSplash.splashFactory,
                                    ),
                                    onPressed: () {},
                                    label: Text('更多'),
                                    icon: Icon(Icons.arrow_right),
                                    iconAlignment: IconAlignment.end,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: infomations.length,
                                itemExtent: 100,
                                itemBuilder: (context, idx) {
                                  final info = infomations[idx];
                                  return Container(
                                    padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Color(0xFFE1E1E6),
                                        ),
                                      ),
                                    ),
                                    child: ListTile(
                                      contentPadding: EdgeInsets.all(0),
                                      title: Text(
                                        info.content,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: Padding(
                                        padding: EdgeInsetsGeometry.only(
                                          top: 8,
                                        ),
                                        child: Text(
                                          '发布时间：${info.dateTime}',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF999999),
                                          ),
                                        ),
                                      ),
                                      trailing: Image(
                                        image: AssetImage(info.coverImg),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar:
            BottomNavigate(), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  Widget _buildNavItem(NavInfo info) {
    return SizedBox(
      height: 64,
      width: 60,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFFDFF5F1),
            child: Image(image: AssetImage(info.icon)),
          ),
          Text(info.title),
        ],
      ),
    );
  }
}
