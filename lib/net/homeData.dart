import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:flutter_demo/src/generated/contents/request.pb.dart';
import 'package:flutter_demo/src/generated/contents/response.pb.dart';
import 'package:flutter_demo/src/generated/contents/service.pbgrpc.dart';

Future getBannerData() async {
  final channel = new ClientChannel('122.115.55.3',
  port: 8080,
  options: const ChannelOptions(
    credentials: const ChannelCredentials.insecure()
  ));
  final client = new ContentServiceClient(channel);

  var bannerRequest = new GetContentRequest();
  bannerRequest.page = 1;
  bannerRequest.pageSize = 100;
  bannerRequest.categories.add('轮播');
  try {
    GetContentResponse response = await client.searchContent(new GetContentRequest());
    print(response.contents);
  } catch (e) {
    print('catch error : $e');
  }
  await channel.shutdown();
}