///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

class GetContentRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GetContentRequest')
    ..pPS(1, 'tags')
    ..pPS(2, 'categories')
    ..a<int>(3, 'page', PbFieldType.O3)
    ..a<int>(4, 'pageSize', PbFieldType.O3)
    ..aOS(5, 'query')
    ..aOS(6, 'queryStartTime')
    ..aOS(7, 'queryEndTime')
    ..hasRequiredFields = false
  ;

  GetContentRequest() : super();
  GetContentRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetContentRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetContentRequest clone() => new GetContentRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static GetContentRequest create() => new GetContentRequest();
  static PbList<GetContentRequest> createRepeated() => new PbList<GetContentRequest>();
  static GetContentRequest getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyGetContentRequest();
    return _defaultInstance;
  }
  static GetContentRequest _defaultInstance;
  static void $checkItem(GetContentRequest v) {
    if (v is! GetContentRequest) checkItemFailed(v, 'GetContentRequest');
  }

  List<String> get tags => $_getList(0);

  List<String> get categories => $_getList(1);

  int get page => $_get(2, 0);
  set page(int v) { $_setSignedInt32(2, v); }
  bool hasPage() => $_has(2);
  void clearPage() => clearField(3);

  int get pageSize => $_get(3, 0);
  set pageSize(int v) { $_setSignedInt32(3, v); }
  bool hasPageSize() => $_has(3);
  void clearPageSize() => clearField(4);

  String get query => $_getS(4, '');
  set query(String v) { $_setString(4, v); }
  bool hasQuery() => $_has(4);
  void clearQuery() => clearField(5);

  String get queryStartTime => $_getS(5, '');
  set queryStartTime(String v) { $_setString(5, v); }
  bool hasQueryStartTime() => $_has(5);
  void clearQueryStartTime() => clearField(6);

  String get queryEndTime => $_getS(6, '');
  set queryEndTime(String v) { $_setString(6, v); }
  bool hasQueryEndTime() => $_has(6);
  void clearQueryEndTime() => clearField(7);
}

class _ReadonlyGetContentRequest extends GetContentRequest with ReadonlyMessageMixin {}

