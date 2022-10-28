import 'package:flutter/material.dart';
import '../../api_tools.dart';

import 'dart:html' as html;

import '../string_file_downloader.dart';


class StringFileDownloaderImpl extends StringFileDownloader {


  @override
  void downloadFile(String csvContent, String saveFileName, String extension) {
    String utf16CsvContent = ApiTools.utf8toUtf16(csvContent);
    final bytes = utf16CsvContent.characters;
    final blob = html.Blob([bytes]);
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.document.createElement('a') as html.AnchorElement
      ..href = url
      ..style.display = 'none'
      ..download =saveFileName + '.' + extension;
    html.document.body.children.add(anchor);

    // download
    anchor.click();

    // cleanup
    html.document.body.children.remove(anchor);
    html.Url.revokeObjectUrl(url);
  }

}