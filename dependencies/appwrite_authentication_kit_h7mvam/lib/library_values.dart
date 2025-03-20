import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class FFLibraryValues {
  static FFLibraryValues _instance = FFLibraryValues._internal();

  factory FFLibraryValues() {
    return _instance;
  }

  FFLibraryValues._internal();

  static void reset() {
    _instance = FFLibraryValues._internal();
  }

  String endpoint = 'https://cloud.appwrite.io/v1';
  String projectId = '677bd5cc003630d0aea1';
}
