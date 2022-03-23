///
//  Generated code. Do not modify.
//  source: sensorcomms.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use readingDataDescriptor instead')
const ReadingData$json = const {
  '1': 'ReadingData',
  '2': const [
    const {'1': 'current', '3': 1, '4': 1, '5': 1, '10': 'current'},
    const {'1': 'min', '3': 2, '4': 1, '5': 1, '10': 'min'},
    const {'1': 'max', '3': 3, '4': 1, '5': 1, '10': 'max'},
    const {'1': 'avg', '3': 4, '4': 1, '5': 1, '10': 'avg'},
  ],
};

/// Descriptor for `ReadingData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readingDataDescriptor = $convert.base64Decode('CgtSZWFkaW5nRGF0YRIYCgdjdXJyZW50GAEgASgBUgdjdXJyZW50EhAKA21pbhgCIAEoAVIDbWluEhAKA21heBgDIAEoAVIDbWF4EhAKA2F2ZxgEIAEoAVIDYXZn');
@$core.Deprecated('Use readingDataStreamDescriptor instead')
const ReadingDataStream$json = const {
  '1': 'ReadingDataStream',
  '2': const [
    const {'1': 'cpuReadings', '3': 1, '4': 1, '5': 11, '6': '.sensorcomms.CpuReadings', '10': 'cpuReadings'},
    const {'1': 'gpuReadings', '3': 2, '4': 1, '5': 11, '6': '.sensorcomms.GpuReadings', '10': 'gpuReadings'},
    const {'1': 'systemReadings', '3': 3, '4': 1, '5': 11, '6': '.sensorcomms.SystemReadings', '10': 'systemReadings'},
  ],
};

/// Descriptor for `ReadingDataStream`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readingDataStreamDescriptor = $convert.base64Decode('ChFSZWFkaW5nRGF0YVN0cmVhbRI6CgtjcHVSZWFkaW5ncxgBIAEoCzIYLnNlbnNvcmNvbW1zLkNwdVJlYWRpbmdzUgtjcHVSZWFkaW5ncxI6CgtncHVSZWFkaW5ncxgCIAEoCzIYLnNlbnNvcmNvbW1zLkdwdVJlYWRpbmdzUgtncHVSZWFkaW5ncxJDCg5zeXN0ZW1SZWFkaW5ncxgDIAEoCzIbLnNlbnNvcmNvbW1zLlN5c3RlbVJlYWRpbmdzUg5zeXN0ZW1SZWFkaW5ncw==');
@$core.Deprecated('Use cpuReadingsDescriptor instead')
const CpuReadings$json = const {
  '1': 'CpuReadings',
  '2': const [
    const {'1': 'packageTemp', '3': 1, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'packageTemp'},
    const {'1': 'coreTemps', '3': 2, '4': 3, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'coreTemps'},
    const {'1': 'thermalThrottling', '3': 3, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'thermalThrottling'},
    const {'1': 'coreClockEffective', '3': 4, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'coreClockEffective'},
    const {'1': 'coreUsages', '3': 5, '4': 3, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'coreUsages'},
    const {'1': 'power', '3': 6, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'power'},
    const {'1': 'fanSpeed', '3': 7, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'fanSpeed'},
  ],
};

/// Descriptor for `CpuReadings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cpuReadingsDescriptor = $convert.base64Decode('CgtDcHVSZWFkaW5ncxI6CgtwYWNrYWdlVGVtcBgBIAEoCzIYLnNlbnNvcmNvbW1zLlJlYWRpbmdEYXRhUgtwYWNrYWdlVGVtcBI2Cgljb3JlVGVtcHMYAiADKAsyGC5zZW5zb3Jjb21tcy5SZWFkaW5nRGF0YVIJY29yZVRlbXBzEkYKEXRoZXJtYWxUaHJvdHRsaW5nGAMgASgLMhguc2Vuc29yY29tbXMuUmVhZGluZ0RhdGFSEXRoZXJtYWxUaHJvdHRsaW5nEkgKEmNvcmVDbG9ja0VmZmVjdGl2ZRgEIAEoCzIYLnNlbnNvcmNvbW1zLlJlYWRpbmdEYXRhUhJjb3JlQ2xvY2tFZmZlY3RpdmUSOAoKY29yZVVzYWdlcxgFIAMoCzIYLnNlbnNvcmNvbW1zLlJlYWRpbmdEYXRhUgpjb3JlVXNhZ2VzEi4KBXBvd2VyGAYgASgLMhguc2Vuc29yY29tbXMuUmVhZGluZ0RhdGFSBXBvd2VyEjQKCGZhblNwZWVkGAcgASgLMhguc2Vuc29yY29tbXMuUmVhZGluZ0RhdGFSCGZhblNwZWVk');
@$core.Deprecated('Use gpuReadingsDescriptor instead')
const GpuReadings$json = const {
  '1': 'GpuReadings',
  '2': const [
    const {'1': 'temp', '3': 1, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'temp'},
    const {'1': 'hotSpotTemp', '3': 2, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'hotSpotTemp'},
    const {'1': 'clock', '3': 3, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'clock'},
    const {'1': 'memoryClock', '3': 4, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'memoryClock'},
    const {'1': 'fanSpeeds', '3': 5, '4': 3, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'fanSpeeds'},
    const {'1': 'power', '3': 6, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'power'},
    const {'1': 'usage', '3': 7, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'usage'},
    const {'1': 'memoryUsage', '3': 8, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'memoryUsage'},
  ],
};

/// Descriptor for `GpuReadings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gpuReadingsDescriptor = $convert.base64Decode('CgtHcHVSZWFkaW5ncxIsCgR0ZW1wGAEgASgLMhguc2Vuc29yY29tbXMuUmVhZGluZ0RhdGFSBHRlbXASOgoLaG90U3BvdFRlbXAYAiABKAsyGC5zZW5zb3Jjb21tcy5SZWFkaW5nRGF0YVILaG90U3BvdFRlbXASLgoFY2xvY2sYAyABKAsyGC5zZW5zb3Jjb21tcy5SZWFkaW5nRGF0YVIFY2xvY2sSOgoLbWVtb3J5Q2xvY2sYBCABKAsyGC5zZW5zb3Jjb21tcy5SZWFkaW5nRGF0YVILbWVtb3J5Q2xvY2sSNgoJZmFuU3BlZWRzGAUgAygLMhguc2Vuc29yY29tbXMuUmVhZGluZ0RhdGFSCWZhblNwZWVkcxIuCgVwb3dlchgGIAEoCzIYLnNlbnNvcmNvbW1zLlJlYWRpbmdEYXRhUgVwb3dlchIuCgV1c2FnZRgHIAEoCzIYLnNlbnNvcmNvbW1zLlJlYWRpbmdEYXRhUgV1c2FnZRI6CgttZW1vcnlVc2FnZRgIIAEoCzIYLnNlbnNvcmNvbW1zLlJlYWRpbmdEYXRhUgttZW1vcnlVc2FnZQ==');
@$core.Deprecated('Use systemReadingsDescriptor instead')
const SystemReadings$json = const {
  '1': 'SystemReadings',
  '2': const [
    const {'1': 'memoryClock', '3': 1, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'memoryClock'},
    const {'1': 'ramLoad', '3': 2, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'ramLoad'},
    const {'1': 'storageTemps', '3': 3, '4': 3, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'storageTemps'},
    const {'1': 'power', '3': 4, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'power'},
    const {'1': 'chargeLevel', '3': 5, '4': 1, '5': 11, '6': '.sensorcomms.ReadingData', '10': 'chargeLevel'},
  ],
};

/// Descriptor for `SystemReadings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemReadingsDescriptor = $convert.base64Decode('Cg5TeXN0ZW1SZWFkaW5ncxI6CgttZW1vcnlDbG9jaxgBIAEoCzIYLnNlbnNvcmNvbW1zLlJlYWRpbmdEYXRhUgttZW1vcnlDbG9jaxIyCgdyYW1Mb2FkGAIgASgLMhguc2Vuc29yY29tbXMuUmVhZGluZ0RhdGFSB3JhbUxvYWQSPAoMc3RvcmFnZVRlbXBzGAMgAygLMhguc2Vuc29yY29tbXMuUmVhZGluZ0RhdGFSDHN0b3JhZ2VUZW1wcxIuCgVwb3dlchgEIAEoCzIYLnNlbnNvcmNvbW1zLlJlYWRpbmdEYXRhUgVwb3dlchI6CgtjaGFyZ2VMZXZlbBgFIAEoCzIYLnNlbnNvcmNvbW1zLlJlYWRpbmdEYXRhUgtjaGFyZ2VMZXZlbA==');
@$core.Deprecated('Use computerInfoRequestDescriptor instead')
const ComputerInfoRequest$json = const {
  '1': 'ComputerInfoRequest',
};

/// Descriptor for `ComputerInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List computerInfoRequestDescriptor = $convert.base64Decode('ChNDb21wdXRlckluZm9SZXF1ZXN0');
@$core.Deprecated('Use monitorRequestDescriptor instead')
const MonitorRequest$json = const {
  '1': 'MonitorRequest',
  '2': const [
    const {'1': 'deviceName', '3': 1, '4': 1, '5': 9, '10': 'deviceName'},
  ],
};

/// Descriptor for `MonitorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List monitorRequestDescriptor = $convert.base64Decode('Cg5Nb25pdG9yUmVxdWVzdBIeCgpkZXZpY2VOYW1lGAEgASgJUgpkZXZpY2VOYW1l');
@$core.Deprecated('Use computerInfoDescriptor instead')
const ComputerInfo$json = const {
  '1': 'ComputerInfo',
  '2': const [
    const {'1': 'computerName', '3': 1, '4': 1, '5': 9, '10': 'computerName'},
    const {'1': 'systemMake', '3': 2, '4': 1, '5': 9, '10': 'systemMake'},
    const {'1': 'cpuName', '3': 3, '4': 1, '5': 9, '10': 'cpuName'},
    const {'1': 'gpuName', '3': 4, '4': 1, '5': 9, '10': 'gpuName'},
    const {'1': 'memory', '3': 5, '4': 1, '5': 9, '10': 'memory'},
    const {'1': 'storageNames', '3': 6, '4': 3, '5': 9, '10': 'storageNames'},
    const {'1': 'storageTypes', '3': 7, '4': 3, '5': 14, '6': '.sensorcomms.ComputerInfo.StorageType', '10': 'storageTypes'},
    const {'1': 'systemType', '3': 8, '4': 1, '5': 14, '6': '.sensorcomms.ComputerInfo.SystemType', '10': 'systemType'},
  ],
  '4': const [ComputerInfo_SystemType$json, ComputerInfo_StorageType$json],
};

@$core.Deprecated('Use computerInfoDescriptor instead')
const ComputerInfo_SystemType$json = const {
  '1': 'SystemType',
  '2': const [
    const {'1': 'DESKTOP', '2': 0},
    const {'1': 'LAPTOP', '2': 1},
  ],
};

@$core.Deprecated('Use computerInfoDescriptor instead')
const ComputerInfo_StorageType$json = const {
  '1': 'StorageType',
  '2': const [
    const {'1': 'SATA', '2': 0},
    const {'1': 'SSD', '2': 1},
  ],
};

/// Descriptor for `ComputerInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List computerInfoDescriptor = $convert.base64Decode('CgxDb21wdXRlckluZm8SIgoMY29tcHV0ZXJOYW1lGAEgASgJUgxjb21wdXRlck5hbWUSHgoKc3lzdGVtTWFrZRgCIAEoCVIKc3lzdGVtTWFrZRIYCgdjcHVOYW1lGAMgASgJUgdjcHVOYW1lEhgKB2dwdU5hbWUYBCABKAlSB2dwdU5hbWUSFgoGbWVtb3J5GAUgASgJUgZtZW1vcnkSIgoMc3RvcmFnZU5hbWVzGAYgAygJUgxzdG9yYWdlTmFtZXMSSQoMc3RvcmFnZVR5cGVzGAcgAygOMiUuc2Vuc29yY29tbXMuQ29tcHV0ZXJJbmZvLlN0b3JhZ2VUeXBlUgxzdG9yYWdlVHlwZXMSRAoKc3lzdGVtVHlwZRgIIAEoDjIkLnNlbnNvcmNvbW1zLkNvbXB1dGVySW5mby5TeXN0ZW1UeXBlUgpzeXN0ZW1UeXBlIiUKClN5c3RlbVR5cGUSCwoHREVTS1RPUBAAEgoKBkxBUFRPUBABIiAKC1N0b3JhZ2VUeXBlEggKBFNBVEEQABIHCgNTU0QQAQ==');
