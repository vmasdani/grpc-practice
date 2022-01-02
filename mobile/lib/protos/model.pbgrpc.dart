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
  static final _$get = $grpc.ClientMethod<$0.Empty, $0.Person>(
      '/PeopleService/get',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Person.fromBuffer(value));

  PeopleServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.Person> get($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$get, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class PeopleServiceBase extends $grpc.Service {
  $core.String get $name => 'PeopleService';

  PeopleServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Person>(
        'get',
        get_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Person value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Person> get_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* get(call, await request);
  }

  $async.Stream<$0.Person> get($grpc.ServiceCall call, $0.Empty request);
}
