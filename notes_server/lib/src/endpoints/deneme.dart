import 'dart:io';

import 'package:serverpod/serverpod.dart';

class MyRoute extends WidgetRoute {
  @override
  Future<Widget> build(Session session, HttpRequest request) async {
    return MyPageWidget(title: 'Home page');
  }
}

class MyPageWidget extends Widget {
  MyPageWidget({String title = ""}) : super(name: 'mypage') {
    values = {
      'title': title,
    };
  }
}
