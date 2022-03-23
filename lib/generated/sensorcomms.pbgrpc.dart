///
//  Generated code. Do not modify.
//  source: sensorcomms.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'sensorcomms.pb.dart' as $0;
export 'sensorcomms.pb.dart';

class SensorServiceClient extends $grpc.Client {
  static final _$getComputerInfo =
      $grpc.ClientMethod<$0.ComputerInfoRequest, $0.ComputerInfo>(
          '/sensorcomms.SensorService/GetComputerInfo',
          ($0.ComputerInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ComputerInfo.fromBuffer(value));
  static final _$monitor =
      $grpc.ClientMethod<$0.MonitorRequest, $0.ReadingDataStream>(
          '/sensorcomms.SensorService/Monitor',
          ($0.MonitorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ReadingDataStream.fromBuffer(value));

  SensorServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ComputerInfo> getComputerInfo(
      $0.ComputerInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getComputerInfo, request, options: options);
  }

  $grpc.ResponseStream<$0.ReadingDataStream> monitor($0.MonitorRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$monitor, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class SensorServiceBase extends $grpc.Service {
  $core.String get $name => 'sensorcomms.SensorService';

  SensorServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ComputerInfoRequest, $0.ComputerInfo>(
        'GetComputerInfo',
        getComputerInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ComputerInfoRequest.fromBuffer(value),
        ($0.ComputerInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MonitorRequest, $0.ReadingDataStream>(
        'Monitor',
        monitor_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.MonitorRequest.fromBuffer(value),
        ($0.ReadingDataStream value) => value.writeToBuffer()));
  }

  $async.Future<$0.ComputerInfo> getComputerInfo_Pre($grpc.ServiceCall call,
      $async.Future<$0.ComputerInfoRequest> request) async {
    return getComputerInfo(call, await request);
  }

  $async.Stream<$0.ReadingDataStream> monitor_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MonitorRequest> request) async* {
    yield* monitor(call, await request);
  }

  $async.Future<$0.ComputerInfo> getComputerInfo(
      $grpc.ServiceCall call, $0.ComputerInfoRequest request);
  $async.Stream<$0.ReadingDataStream> monitor(
      $grpc.ServiceCall call, $0.MonitorRequest request);
}
