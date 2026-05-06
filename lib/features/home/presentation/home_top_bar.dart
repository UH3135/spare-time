import 'package:flutter/material.dart';

import '../../../core/widgets/app_top_bar.dart';

class HomeTopBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeTopBar({
    super.key,
    this.onTapSettings,
  });

  final VoidCallback? onTapSettings;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppTopBar(
      title: '짜투리 시간',
      actions: [
        IconButton(
          onPressed: onTapSettings,
          icon: const Icon(Icons.settings_outlined),
          tooltip: '설정',
        ),
      ],
    );
  }
}
