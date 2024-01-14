import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

Future<void> hiveInitialize() async {
  if (kIsWeb) {
    return;
  }

  var d = await getApplicationSupportDirectory();
  String? path = d.uri.toFilePath(windows: Platform.isWindows);
  Hive.init(path);
}
