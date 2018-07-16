///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart';

class GetContentResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GetContentResponse')
    ..pp<ContentDetail>(1, 'contents', PbFieldType.PM, ContentDetail.$checkItem, ContentDetail.create)
    ..aOB(2, 'noMore')
    ..hasRequiredFields = false
  ;

  GetContentResponse() : super();
  GetContentResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetContentResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetContentResponse clone() => new GetContentResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static GetContentResponse create() => new GetContentResponse();
  static PbList<GetContentResponse> createRepeated() => new PbList<GetContentResponse>();
  static GetContentResponse getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyGetContentResponse();
    return _defaultInstance;
  }
  static GetContentResponse _defaultInstance;
  static void $checkItem(GetContentResponse v) {
    if (v is! GetContentResponse) checkItemFailed(v, 'GetContentResponse');
  }

  List<ContentDetail> get contents => $_getList(0);

  bool get noMore => $_get(1, false);
  set noMore(bool v) { $_setBool(1, v); }
  bool hasNoMore() => $_has(1);
  void clearNoMore() => clearField(2);
}

class _ReadonlyGetContentResponse extends GetContentResponse with ReadonlyMessageMixin {}

class ContentDetail_CustomFieldsEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ContentDetail_CustomFieldsEntry')
    ..aOS(1, 'key')
    ..aOS(2, 'value')
    ..hasRequiredFields = false
  ;

  ContentDetail_CustomFieldsEntry() : super();
  ContentDetail_CustomFieldsEntry.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ContentDetail_CustomFieldsEntry.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ContentDetail_CustomFieldsEntry clone() => new ContentDetail_CustomFieldsEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ContentDetail_CustomFieldsEntry create() => new ContentDetail_CustomFieldsEntry();
  static PbList<ContentDetail_CustomFieldsEntry> createRepeated() => new PbList<ContentDetail_CustomFieldsEntry>();
  static ContentDetail_CustomFieldsEntry getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyContentDetail_CustomFieldsEntry();
    return _defaultInstance;
  }
  static ContentDetail_CustomFieldsEntry _defaultInstance;
  static void $checkItem(ContentDetail_CustomFieldsEntry v) {
    if (v is! ContentDetail_CustomFieldsEntry) checkItemFailed(v, 'ContentDetail_CustomFieldsEntry');
  }

  String get key => $_getS(0, '');
  set key(String v) { $_setString(0, v); }
  bool hasKey() => $_has(0);
  void clearKey() => clearField(1);

  String get value => $_getS(1, '');
  set value(String v) { $_setString(1, v); }
  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);
}

class _ReadonlyContentDetail_CustomFieldsEntry extends ContentDetail_CustomFieldsEntry with ReadonlyMessageMixin {}

class ContentDetail extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ContentDetail')
    ..a<int>(1, 'id', PbFieldType.O3)
    ..aOS(2, 'title')
    ..aOS(3, 'url')
    ..aOS(4, 'date')
    ..aOS(5, 'excerpt')
    ..pp<ContentDetail_CustomFieldsEntry>(6, 'customFields', PbFieldType.PM, ContentDetail_CustomFieldsEntry.$checkItem, ContentDetail_CustomFieldsEntry.create)
    ..hasRequiredFields = false
  ;

  ContentDetail() : super();
  ContentDetail.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ContentDetail.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ContentDetail clone() => new ContentDetail()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ContentDetail create() => new ContentDetail();
  static PbList<ContentDetail> createRepeated() => new PbList<ContentDetail>();
  static ContentDetail getDefault() {
    if (_defaultInstance == null) _defaultInstance = new _ReadonlyContentDetail();
    return _defaultInstance;
  }
  static ContentDetail _defaultInstance;
  static void $checkItem(ContentDetail v) {
    if (v is! ContentDetail) checkItemFailed(v, 'ContentDetail');
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setSignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get title => $_getS(1, '');
  set title(String v) { $_setString(1, v); }
  bool hasTitle() => $_has(1);
  void clearTitle() => clearField(2);

  String get url => $_getS(2, '');
  set url(String v) { $_setString(2, v); }
  bool hasUrl() => $_has(2);
  void clearUrl() => clearField(3);

  String get date => $_getS(3, '');
  set date(String v) { $_setString(3, v); }
  bool hasDate() => $_has(3);
  void clearDate() => clearField(4);

  String get excerpt => $_getS(4, '');
  set excerpt(String v) { $_setString(4, v); }
  bool hasExcerpt() => $_has(4);
  void clearExcerpt() => clearField(5);

  List<ContentDetail_CustomFieldsEntry> get customFields => $_getList(5);
}

class _ReadonlyContentDetail extends ContentDetail with ReadonlyMessageMixin {}

