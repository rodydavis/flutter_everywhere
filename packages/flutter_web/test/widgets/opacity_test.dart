// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_web/material.dart';
import 'package:flutter_web_test/flutter_web_test.dart';

void main() {
  group('$Opacity', () {
    testWidgets('sets opacity style', (WidgetTester tester) async {
      await tester.pumpWidget(new Opacity(
        opacity: 0.5,
        child: new Text(
          'Hello',
          textDirection: TextDirection.ltr,
        ),
      ));
      expectCurrentHtml('''
<o style="opacity: 0.501961">
  <pic><d><p style="font-family: Ahem">Hello</p></d></pic>
</o>
''');
    });

    test('throws error if given invalid opacity', () {
      expect(() => new Opacity(opacity: -0.1, child: new Text('Hello')),
          throwsAssertionError);
      expect(() => new Opacity(opacity: 1.1, child: new Text('Hello')),
          throwsAssertionError);
      expect(() => new Opacity(opacity: null, child: new Text('Hello')),
          throwsAssertionError);
    });
  });
}
