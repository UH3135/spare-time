import 'package:flutter/material.dart';

class AppTopBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTopBar({
    super.key,
    required this.title,
    this.leading,
    this.actions,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation = 0,
  });

  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double elevation;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      leading: leading,
      actions: actions,
      centerTitle: false,
      elevation: elevation,
      scrolledUnderElevation: 0,
      titleSpacing: 16,
      backgroundColor: backgroundColor ?? theme.colorScheme.surface,
      foregroundColor: foregroundColor ?? theme.colorScheme.onSurface,
      title: Text(
        title,
        style: theme.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
