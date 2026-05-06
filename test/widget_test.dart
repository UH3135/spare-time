import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spare_time/core/layout/app_page_scaffold.dart';
import 'package:spare_time/core/widgets/app_top_bar.dart';

void main() {
  testWidgets('AppPageScaffold renders the provided app bar', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AppPageScaffold(
          appBar: AppTopBar(title: '짜투리 시간'),
          body: SizedBox.shrink(),
        ),
      ),
    );

    final appTopBar = tester.widget<AppTopBar>(find.byType(AppTopBar));

    expect(find.text('짜투리 시간'), findsOneWidget);
    expect(appTopBar.variant, AppTopBarVariant.primary);
  });
}
