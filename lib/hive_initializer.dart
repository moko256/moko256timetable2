import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:win32/win32.dart';

Future<void> hiveInitialize() async {
  if (kIsWeb) {
    return;
  }
  String? path = null;
  try {
    var d = await getApplicationSupportDirectory();
    path = d.uri.toFilePath(windows: Platform.isWindows);
  } catch (_) {
    if (Platform.isWindows) {
      var folderGuid = calloc<GUID>();
      folderGuid.ref.setGUID(FOLDERID_RoamingAppData);
      var folder = calloc<Pointer<Utf16>>();

      var storage = SHGetKnownFolderPath(
        folderGuid,
        KF_FLAG_FORCE_APP_DATA_REDIRECTION,
        NULL,
        folder,
      );
      path = folder.value.toDartString();

      free(folder);
      free(folderGuid);
    } else {
      rethrow;
    }
  }
  Hive.init(path);
}
