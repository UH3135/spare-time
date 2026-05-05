import 'package:flutter/material.dart';

import '../widgets/app_top_bar.dart';

class AppPageScaffold extends StatelessWidget {
  const AppPageScaffold({
    super.key,
    required this.title,
    required this.body,
    this.appBarVariant = AppTopBarVariant.primary,
    this.actions,
    this.floatingActionButton,
    this.backgroundColor,
  });

  final String title;
  final Widget body;
  final AppTopBarVariant appBarVariant;
  final List<Widget>? actions;
  final Widget? floatingActionButton;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppTopBar(
        title: title,
        variant: appBarVariant,
        actions: actions,
      ),
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
