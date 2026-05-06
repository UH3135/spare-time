import 'package:flutter/material.dart';

enum AppTopBarVariant { primary }

class AppTopBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTopBar({
    super.key,
    required this.title,
    this.variant = AppTopBarVariant.primary,
    this.leading,
    this.actions,
    this.showBackButton = false,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation = 0,
  });

  final String title;
  final AppTopBarVariant variant;
  final Widget? leading;
  final List<Widget>? actions;
  final bool showBackButton;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double elevation;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = _resolveStyle(theme);

    return AppBar(
      leading: leading ?? (showBackButton ? const BackButton() : null),
      actions: actions,
      centerTitle: false,
      elevation: style.elevation,
      scrolledUnderElevation: 0,
      titleSpacing: 16,
      backgroundColor: backgroundColor ?? style.backgroundColor,
      foregroundColor: foregroundColor ?? style.foregroundColor,
      title: Text(
        title,
        style: theme.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }

  _AppTopBarStyle _resolveStyle(ThemeData theme) {
    switch (variant) {
      case AppTopBarVariant.primary:
        return _AppTopBarStyle(
          backgroundColor: theme.colorScheme.surface,
          foregroundColor: theme.colorScheme.onSurface,
          elevation: elevation,
        );
    }
  }
}

class _AppTopBarStyle {
  const _AppTopBarStyle({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.elevation,
  });

  final Color backgroundColor;
  final Color foregroundColor;
  final double elevation;
}
