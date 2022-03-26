import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pet_project/common/widgets/buttons.dart';
import 'package:pet_project/common/widgets/pet_type_button.dart';

void main() {
  group('Testing Custom Buttons', () {
    testWidgets('PetlyButtom Testing', (tester) async {
      var tapped = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PetlyButton(
              title: 'Button Test',
              onPressed: () => tapped = true,
            ),
          ),
        ),
      );
      await tester.tap(find.text('Button Test'));
      expect(tapped, true);
    });

    testWidgets('PetActionButton Testing', (tester) async {
      String? actionName;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PetTypeButton(
              actionName: 'Test',
              currentAction: 'Action',
              onSelected: (currentAction) => actionName = currentAction,
              actionImage: const AssetImage('assets/images/dog.png'),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Test'));
      expect(actionName, 'Test');
    });
  });
}
