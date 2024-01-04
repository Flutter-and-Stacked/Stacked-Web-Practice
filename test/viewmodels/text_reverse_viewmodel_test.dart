import 'package:flutter_test/flutter_test.dart';
import 'package:first_stacked_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('TextReverseViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
