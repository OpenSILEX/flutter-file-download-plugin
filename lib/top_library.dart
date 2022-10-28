export 'string_file_downloader.dart';
export 'string_file_downloader_implementations/stub_string_file_downloader.dart' // Stub implementation
  if (dart.library.io) 'string_file_downloader_implementations/tablet_string_file_downloader.dart' // dart:io implementation
  if (dart.library.html) 'string_file_downloader_implementations/web_string_file_downloader.dart';

