///
//  Generated code. Do not modify.
///
// ignore_for_file: non_constant_identifier_names,library_prefixes

import 'dart:async';

import 'package:grpc/grpc.dart';

import 'request.pb.dart';
import 'response.pb.dart';
export 'service.pb.dart';

class ContentServiceClient extends Client {
  static final _$searchContent =
      new ClientMethod<GetContentRequest, GetContentResponse>(
          '/ContentService/SearchContent',
          (GetContentRequest value) => value.writeToBuffer(),
          (List<int> value) => new GetContentResponse.fromBuffer(value));

  ContentServiceClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<GetContentResponse> searchContent(GetContentRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$searchContent, new Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class ContentServiceBase extends Service {
  String get $name => 'ContentService';

  ContentServiceBase() {
    $addMethod(new ServiceMethod<GetContentRequest, GetContentResponse>(
        'SearchContent',
        searchContent_Pre,
        false,
        false,
        (List<int> value) => new GetContentRequest.fromBuffer(value),
        (GetContentResponse value) => value.writeToBuffer()));
  }

  Future<GetContentResponse> searchContent_Pre(
      ServiceCall call, Future request) async {
    return searchContent(call, await request);
  }

  Future<GetContentResponse> searchContent(
      ServiceCall call, GetContentRequest request);
}
