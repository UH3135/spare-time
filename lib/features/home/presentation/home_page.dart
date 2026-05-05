import 'package:flutter/material.dart';

import '../../../core/layout/app_page_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      title: '짜투리 시간',
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings_outlined),
          tooltip: '설정',
        ),
      ],
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.videocam),
        label: const Text('기록하기'),
      ),
      body: const SafeArea(
        top: false,
        child: Center(
          child: Text('메인 콘텐츠 영역'),
        ),
      ),
    );
  }
}
