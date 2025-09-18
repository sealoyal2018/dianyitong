import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubjectView extends StatefulWidget {
  const SubjectView({super.key});

  @override
  State<SubjectView> createState() => _SubjectViewState();
}

class _SubjectViewState extends State<SubjectView> {
  final _normalServices = [
    "内科",
    "外科",
    "儿科",
    "妇产科",
    "口腔科",
    "眼耳鼻喉科",
    "皮肤科",
    "康复医学科",
    "临床心理科",
  ];

  final items = [
    "心血管内科门诊",
    "高血压门诊",
    "房颤门诊",
    "神经内科门诊",
    "消化内科门诊",
    "内分泌代谢科知名专家门诊",
    "呼吸与危重症医学科门诊",
    "全科医学科门诊",
    "放疗科门诊",
    "肿瘤内科知名专家门诊",
    "肿瘤内科门诊",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          leading: IconButton(
            onPressed: () {
              final goRouter = GoRouter.of(context);
              if (goRouter.canPop()) {
                goRouter.pop();
              }
            },
            icon: Icon(Icons.arrow_left),
          ),
          title: Expanded(child: Text('科室列表')),
          centerTitle: true,
        ),
        body: SizedBox(
          child: Column(
            spacing: 15,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: SizedBox(
                    width: 48,
                    child: Image(image: AssetImage('assets/images/s1.png')),
                  ),
                  title: Text(
                    '即时互联网医院',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),
                  subtitle: Text(
                    '正常营业|周一至周日24小时',
                    style: TextStyle(fontSize: 12, color: Color(0xFF999999)),
                  ),
                  trailing: TextButton.icon(
                    onPressed: () {},
                    label: Text('切换院区'),
                    icon: Icon(Icons.arrow_right),
                    iconAlignment: IconAlignment.end,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: Color(0xFFD8E3F0)),
                      gapPadding: 4,
                    ),
                    prefixIcon: Icon(Icons.search, color: Color(0xFF999999)),
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
              Expanded(
                child: DefaultTabController(
                  initialIndex: 0,
                  length: 2,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 34,
                        child: TabBar(
                          tabs: [
                            Tab(text: '普通门诊'),
                            Tab(text: '知名专家门诊'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [_defaultTabView(), _specTabView()],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _defaultTabView() {
    return SizedBox(
      child: Row(
        children: [
          SizedBox(
            width: 121,
            child: ListView.builder(
              itemCount: _normalServices.length,
              itemBuilder: (context, idx) {
                var s = _normalServices[idx];
                var isSelected = idx == 0;
                return Container(
                  height: 64,
                  color: isSelected ? Color(0xFFFFFFFF) : Color(0xFFF7F8FA),
                  child: Row(
                    spacing: 20,
                    children: [
                      Container(
                        width: 4,
                        height: 24,
                        color: isSelected
                            ? Color(0xFF26C493)
                            : Colors.transparent,
                      ),
                      Expanded(
                        child: Text(
                          s,
                          style: TextStyle(color: Color(0xFF666666)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, idx) {
                final item = items[idx];
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Color(0xFFE8E8E8)),
                    ),
                  ),
                  child: ListTile(
                    title: Text(item),
                    tileColor: Colors.white,
                    trailing: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xFFE6F7F4),
                      ),
                      child: Text(
                        '有号',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF26C493),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _specTabView() {
    return Center(child: Text('text2'));
  }
}
