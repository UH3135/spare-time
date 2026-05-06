import 'package:flutter/material.dart';

import '../../../core/layout/app_page_scaffold.dart';
import 'home_top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPageScaffold(
      appBar: const HomeTopBar(),
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
