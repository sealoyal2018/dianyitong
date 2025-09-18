import 'package:flutter/material.dart';

import '../widgets/bottom_navigate.dart';

class MessageView extends StatefulWidget {
  const MessageView({super.key});

  @override
  State<MessageView> createState() => _MessageViewState();
}

enum MessageType { registration, message, paymentSuccess, paymentPending }

class MessageItem {
  final MessageType type;
  final String content;
  final String title;
  final String dateTime;

  MessageItem({
    required this.type,
    required this.content,
    required this.title,
    required this.dateTime,
  });
}

class _MessageViewState extends State<MessageView> {
  final _messageItems = [
    MessageItem(
      type: MessageType.registration,
      title: '挂号成功通知',
      content: "您已挂号成功，请按照预约事件到院就诊。",
      dateTime: '1分钟前',
    ),
    MessageItem(
      type: MessageType.message,
      title: '消息通知',
      content: "智能客服：还有什么需要帮助您的？",
      dateTime: '1分钟前',
    ),
    MessageItem(
      type: MessageType.paymentSuccess,
      title: '缴费成功通知',
      content: "您已缴费成功。",
      dateTime: '1分钟前',
    ),
    MessageItem(
      type: MessageType.paymentPending,
      title: '缴费通知',
      content: "您有一笔门诊待支付订单，订单将在30分钟内自动取消请及时支付。",
      dateTime: '1分钟前',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F9), //  LinearGradient(colors: ),
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          title: Center(
            child: Text(
              '消息',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: ColoredBox(
          color: Color(0xFFF5F5F9),
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            color: Colors.transparent,
            child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: _messageItems.length,
                itemBuilder: (context, idx) {
                  final item = _messageItems[idx];
                  return Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(8),
                    color: Color(0xFFFFFFFF),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 32,
                          child: Row(
                            spacing: 4,
                            children: [
                              Image(image: AssetImage(_getImage(item.type))),
                              Text(
                                item.title,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Text(
                                item.dateTime,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF999999),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            item.content,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF999999),
                            ),
                          ),
                        ),
                        Divider(height: 0.1, color: Color(0xFFE6E6E6)),
                        SizedBox(
                          height: 30,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '查看详情',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF333333),
                                ),
                              ),
                              Icon(Icons.arrow_right, color: Color(0xFF999999)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
          ),
        ),
        bottomNavigationBar: BottomNavigate(),
      ),
    );
  }

  String _getImage(MessageType type) {
    if (type == MessageType.message) {
      return "assets/images/m_2.png";
    }

    if (type == MessageType.paymentSuccess) {
      return "assets/images/m_3.png";
    }

    if (type == MessageType.paymentPending) {
      return "assets/images/m_4.png";
    }
    return "assets/images/m_1.png";
  }
}
