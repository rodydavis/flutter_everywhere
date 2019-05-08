// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:typed_data' show Uint8List;
import 'package:flutter_web_ui/ui.dart' as ui show instantiateImageCodec, Codec;

import 'package:flutter_web_test/flutter_web_test.dart';
import 'package:flutter_web/widgets.dart';
import 'package:flutter_web/painting.dart';
import 'package:flutter_web/foundation.dart';
import 'package:flutter_web/services.dart';

import '../painting/image_data.dart';

class PaintingBindingSpy extends BindingBase
    with ServicesBinding, PaintingBinding {
  int counter = 0;
  int get instantiateImageCodecCalledCount => counter;

  @override
  Future<ui.Codec> instantiateImageCodec(Uint8List list) {
    counter++;
    return ui.instantiateImageCodec(list,
        decodedCacheRatioCap: decodedCacheRatioCap);
  }

  @override
  void initLicenses() {
    // Do not include any licenses, because we're a test, and the LICENSE file
    // doesn't get generated for tests.
  }
}

void main() {
  final PaintingBindingSpy binding = PaintingBindingSpy();

  test('decodedCacheRatio', () async {
    // final PaintingBinding binding = PaintingBinding.instance;
    // Has default value.
    expect(binding.decodedCacheRatioCap, isNot(null));

    // Can be set.
    binding.decodedCacheRatioCap = 1.0;
    expect(binding.decodedCacheRatioCap, 1.0);
  });

  // Not applicable for flutter web since it used webOnlyImageCodec.
  test('instantiateImageCodec used for loading images', () async {
    expect(binding.instantiateImageCodecCalledCount, 0);

    final Uint8List bytes = Uint8List.fromList(kTransparentImage);
    final MemoryImage memoryImage = MemoryImage(bytes);
    memoryImage.load(memoryImage);
    expect(binding.instantiateImageCodecCalledCount, 1);
  }, skip: true);
}
