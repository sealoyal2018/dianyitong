import 'package:dianyitong/views/home_view.dart';
import 'package:dianyitong/views/me_view.dart';
import 'package:dianyitong/views/message_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeView()),
    GoRoute(path: '/message', builder: (context, state) => MessageView()),
    GoRoute(path: '/me', builder: (context, state) => MeView()),
  ],
);
