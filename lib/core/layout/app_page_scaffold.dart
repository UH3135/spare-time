import 'package:flutter/material.dart';

class AppPageScaffold extends StatelessWidget {
  const AppPageScaffold({
    super.key,
    this.appBar,
    required this.body,
    this.floatingActionButton,
    this.backgroundColor,
  });

  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? floatingActionButton;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
