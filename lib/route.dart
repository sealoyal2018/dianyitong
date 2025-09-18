import 'package:dianyitong/views/home_view.dart';
import 'package:dianyitong/views/me_view.dart';
import 'package:dianyitong/views/message_view.dart';
import 'package:dianyitong/views/schedule_view.dart';
import 'package:dianyitong/views/subject_view.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeView()),
    GoRoute(path: '/schedule', builder: (context, state) => ScheduleView()),
    GoRoute(path: '/subject', builder: (context, state) => SubjectView()),
    GoRoute(path: '/message', builder: (context, state) => MessageView()),
    GoRoute(path: '/me', builder: (context, state) => MeView()),
  ],
);
