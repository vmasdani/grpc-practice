///
//  Generated code. Do not modify.
//  source: protos/model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'model.pb.dart' as $0;
export 'model.pb.dart';

class PeopleServiceClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$0.Empty, $0.PeopleResp>(
      '/PeopleService/get',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PeopleResp.fromBuffer(value));

  PeopleServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PeopleResp> get($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }
}

abstract class PeopleServiceBase extends $grpc.Service {
  $core.String get $name => 'PeopleService';

  PeopleServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.PeopleResp>(
        'get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.PeopleResp value) => value.writeToBuffer()));
  }

  $async.Future<$0.PeopleResp> get_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return get(call, await request);
  }

  $async.Future<$0.PeopleResp> get($grpc.ServiceCall call, $0.Empty request);
}
