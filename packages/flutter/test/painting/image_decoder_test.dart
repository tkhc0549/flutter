// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/painting.dart';

import '../flutter_test_alternative.dart';
import 'binding_test.dart';
import 'image_data.dart';

void main() {
  final PaintingBindingSpy binding = PaintingBindingSpy();
  test('Image decoder control test', () async {
    expect(binding.instantiateImageCodecCalledCount, 0);
    final ui.Image image = await decodeImageFromList(Uint8List.fromList(kTransparentImage));
    expect(image, isNotNull);
    expect(image.width, 1);
    expect(image.height, 1);
    expect(binding.instantiateImageCodecCalledCount, 1);
  });
}
