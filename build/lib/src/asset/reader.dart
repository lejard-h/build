// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
import 'dart:async';
import 'dart:convert';

import 'id.dart';

/// Abstract interface for reading assets.
abstract class AssetReader {
  /// Asynchronously reads [id], and returns it as a [List<int>].
  Future<List<int>> readAsBytes(AssetId id);

  /// Asynchronously reads [id], and returns it as a [String].
  Future<String> readAsString(AssetId id, {Encoding encoding: UTF8});

  /// Asynchronously checks if [id] exists.
  Future<bool> hasInput(AssetId id);
}
