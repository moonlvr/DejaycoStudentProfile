// This is a basic Flutter widget test for the Student Profile App.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:haha/main.dart';

void main() {
  testWidgets('Profile screen displays student name', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const StudentProfileApp());

    // Verify that the student's full name appears on screen.
    expect(find.text('Miguel Angelo R. Santos'), findsOneWidget);

    // Verify that the AppBar title is showing.
    expect(find.text('Student Profile'), findsOneWidget);
  });

  testWidgets('Academic info toggles when Show/Hide is tapped', (WidgetTester tester) async {
    await tester.pumpWidget(const StudentProfileApp());

    // Academic info is visible by default.
    expect(find.text('Favorite Subject'), findsOneWidget);

    // Tap the Hide button.
    await tester.tap(find.text('Hide'));
    await tester.pump();

    // Academic info should now be hidden.
    expect(find.text('Favorite Subject'), findsNothing);

    // Tap Show to bring it back.
    await tester.tap(find.text('Show'));
    await tester.pump();

    expect(find.text('Favorite Subject'), findsOneWidget);
  });
}