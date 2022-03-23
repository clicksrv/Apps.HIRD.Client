///
//  Generated code. Do not modify.
//  source: sensorcomms.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ComputerInfo_SystemType extends $pb.ProtobufEnum {
  static const ComputerInfo_SystemType DESKTOP = ComputerInfo_SystemType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DESKTOP');
  static const ComputerInfo_SystemType LAPTOP = ComputerInfo_SystemType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LAPTOP');

  static const $core.List<ComputerInfo_SystemType> values = <ComputerInfo_SystemType> [
    DESKTOP,
    LAPTOP,
  ];

  static final $core.Map<$core.int, ComputerInfo_SystemType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ComputerInfo_SystemType? valueOf($core.int value) => _byValue[value];

  const ComputerInfo_SystemType._($core.int v, $core.String n) : super(v, n);
}

class ComputerInfo_StorageType extends $pb.ProtobufEnum {
  static const ComputerInfo_StorageType SATA = ComputerInfo_StorageType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SATA');
  static const ComputerInfo_StorageType SSD = ComputerInfo_StorageType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SSD');

  static const $core.List<ComputerInfo_StorageType> values = <ComputerInfo_StorageType> [
    SATA,
    SSD,
  ];

  static final $core.Map<$core.int, ComputerInfo_StorageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ComputerInfo_StorageType? valueOf($core.int value) => _byValue[value];

  const ComputerInfo_StorageType._($core.int v, $core.String n) : super(v, n);
}

