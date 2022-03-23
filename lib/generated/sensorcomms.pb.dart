///
//  Generated code. Do not modify.
//  source: sensorcomms.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'sensorcomms.pbenum.dart';

export 'sensorcomms.pbenum.dart';

class ReadingData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReadingData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sensorcomms'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'current', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'min', $pb.PbFieldType.OD)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'max', $pb.PbFieldType.OD)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avg', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  ReadingData._() : super();
  factory ReadingData({
    $core.double? current,
    $core.double? min,
    $core.double? max,
    $core.double? avg,
  }) {
    final _result = create();
    if (current != null) {
      _result.current = current;
    }
    if (min != null) {
      _result.min = min;
    }
    if (max != null) {
      _result.max = max;
    }
    if (avg != null) {
      _result.avg = avg;
    }
    return _result;
  }
  factory ReadingData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadingData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadingData clone() => ReadingData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadingData copyWith(void Function(ReadingData) updates) => super.copyWith((message) => updates(message as ReadingData)) as ReadingData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadingData create() => ReadingData._();
  ReadingData createEmptyInstance() => create();
  static $pb.PbList<ReadingData> createRepeated() => $pb.PbList<ReadingData>();
  @$core.pragma('dart2js:noInline')
  static ReadingData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadingData>(create);
  static ReadingData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get current => $_getN(0);
  @$pb.TagNumber(1)
  set current($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrent() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrent() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get min => $_getN(1);
  @$pb.TagNumber(2)
  set min($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMin() => $_has(1);
  @$pb.TagNumber(2)
  void clearMin() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get max => $_getN(2);
  @$pb.TagNumber(3)
  set max($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMax() => $_has(2);
  @$pb.TagNumber(3)
  void clearMax() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get avg => $_getN(3);
  @$pb.TagNumber(4)
  set avg($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvg() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvg() => clearField(4);
}

class ReadingDataStream extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReadingDataStream', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sensorcomms'), createEmptyInstance: create)
    ..aOM<CpuReadings>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cpuReadings', protoName: 'cpuReadings', subBuilder: CpuReadings.create)
    ..aOM<GpuReadings>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpuReadings', protoName: 'gpuReadings', subBuilder: GpuReadings.create)
    ..aOM<SystemReadings>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'systemReadings', protoName: 'systemReadings', subBuilder: SystemReadings.create)
    ..hasRequiredFields = false
  ;

  ReadingDataStream._() : super();
  factory ReadingDataStream({
    CpuReadings? cpuReadings,
    GpuReadings? gpuReadings,
    SystemReadings? systemReadings,
  }) {
    final _result = create();
    if (cpuReadings != null) {
      _result.cpuReadings = cpuReadings;
    }
    if (gpuReadings != null) {
      _result.gpuReadings = gpuReadings;
    }
    if (systemReadings != null) {
      _result.systemReadings = systemReadings;
    }
    return _result;
  }
  factory ReadingDataStream.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadingDataStream.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadingDataStream clone() => ReadingDataStream()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadingDataStream copyWith(void Function(ReadingDataStream) updates) => super.copyWith((message) => updates(message as ReadingDataStream)) as ReadingDataStream; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadingDataStream create() => ReadingDataStream._();
  ReadingDataStream createEmptyInstance() => create();
  static $pb.PbList<ReadingDataStream> createRepeated() => $pb.PbList<ReadingDataStream>();
  @$core.pragma('dart2js:noInline')
  static ReadingDataStream getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadingDataStream>(create);
  static ReadingDataStream? _defaultInstance;

  @$pb.TagNumber(1)
  CpuReadings get cpuReadings => $_getN(0);
  @$pb.TagNumber(1)
  set cpuReadings(CpuReadings v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCpuReadings() => $_has(0);
  @$pb.TagNumber(1)
  void clearCpuReadings() => clearField(1);
  @$pb.TagNumber(1)
  CpuReadings ensureCpuReadings() => $_ensure(0);

  @$pb.TagNumber(2)
  GpuReadings get gpuReadings => $_getN(1);
  @$pb.TagNumber(2)
  set gpuReadings(GpuReadings v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGpuReadings() => $_has(1);
  @$pb.TagNumber(2)
  void clearGpuReadings() => clearField(2);
  @$pb.TagNumber(2)
  GpuReadings ensureGpuReadings() => $_ensure(1);

  @$pb.TagNumber(3)
  SystemReadings get systemReadings => $_getN(2);
  @$pb.TagNumber(3)
  set systemReadings(SystemReadings v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSystemReadings() => $_has(2);
  @$pb.TagNumber(3)
  void clearSystemReadings() => clearField(3);
  @$pb.TagNumber(3)
  SystemReadings ensureSystemReadings() => $_ensure(2);
}

class CpuReadings extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CpuReadings', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sensorcomms'), createEmptyInstance: create)
    ..aOM<ReadingData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'packageTemp', protoName: 'packageTemp', subBuilder: ReadingData.create)
    ..pc<ReadingData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coreTemps', $pb.PbFieldType.PM, protoName: 'coreTemps', subBuilder: ReadingData.create)
    ..aOM<ReadingData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thermalThrottling', protoName: 'thermalThrottling', subBuilder: ReadingData.create)
    ..aOM<ReadingData>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coreClockEffective', protoName: 'coreClockEffective', subBuilder: ReadingData.create)
    ..pc<ReadingData>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coreUsages', $pb.PbFieldType.PM, protoName: 'coreUsages', subBuilder: ReadingData.create)
    ..aOM<ReadingData>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'power', subBuilder: ReadingData.create)
    ..aOM<ReadingData>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fanSpeed', protoName: 'fanSpeed', subBuilder: ReadingData.create)
    ..hasRequiredFields = false
  ;

  CpuReadings._() : super();
  factory CpuReadings({
    ReadingData? packageTemp,
    $core.Iterable<ReadingData>? coreTemps,
    ReadingData? thermalThrottling,
    ReadingData? coreClockEffective,
    $core.Iterable<ReadingData>? coreUsages,
    ReadingData? power,
    ReadingData? fanSpeed,
  }) {
    final _result = create();
    if (packageTemp != null) {
      _result.packageTemp = packageTemp;
    }
    if (coreTemps != null) {
      _result.coreTemps.addAll(coreTemps);
    }
    if (thermalThrottling != null) {
      _result.thermalThrottling = thermalThrottling;
    }
    if (coreClockEffective != null) {
      _result.coreClockEffective = coreClockEffective;
    }
    if (coreUsages != null) {
      _result.coreUsages.addAll(coreUsages);
    }
    if (power != null) {
      _result.power = power;
    }
    if (fanSpeed != null) {
      _result.fanSpeed = fanSpeed;
    }
    return _result;
  }
  factory CpuReadings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CpuReadings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CpuReadings clone() => CpuReadings()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CpuReadings copyWith(void Function(CpuReadings) updates) => super.copyWith((message) => updates(message as CpuReadings)) as CpuReadings; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CpuReadings create() => CpuReadings._();
  CpuReadings createEmptyInstance() => create();
  static $pb.PbList<CpuReadings> createRepeated() => $pb.PbList<CpuReadings>();
  @$core.pragma('dart2js:noInline')
  static CpuReadings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CpuReadings>(create);
  static CpuReadings? _defaultInstance;

  @$pb.TagNumber(1)
  ReadingData get packageTemp => $_getN(0);
  @$pb.TagNumber(1)
  set packageTemp(ReadingData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPackageTemp() => $_has(0);
  @$pb.TagNumber(1)
  void clearPackageTemp() => clearField(1);
  @$pb.TagNumber(1)
  ReadingData ensurePackageTemp() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<ReadingData> get coreTemps => $_getList(1);

  @$pb.TagNumber(3)
  ReadingData get thermalThrottling => $_getN(2);
  @$pb.TagNumber(3)
  set thermalThrottling(ReadingData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasThermalThrottling() => $_has(2);
  @$pb.TagNumber(3)
  void clearThermalThrottling() => clearField(3);
  @$pb.TagNumber(3)
  ReadingData ensureThermalThrottling() => $_ensure(2);

  @$pb.TagNumber(4)
  ReadingData get coreClockEffective => $_getN(3);
  @$pb.TagNumber(4)
  set coreClockEffective(ReadingData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCoreClockEffective() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoreClockEffective() => clearField(4);
  @$pb.TagNumber(4)
  ReadingData ensureCoreClockEffective() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<ReadingData> get coreUsages => $_getList(4);

  @$pb.TagNumber(6)
  ReadingData get power => $_getN(5);
  @$pb.TagNumber(6)
  set power(ReadingData v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPower() => $_has(5);
  @$pb.TagNumber(6)
  void clearPower() => clearField(6);
  @$pb.TagNumber(6)
  ReadingData ensurePower() => $_ensure(5);

  @$pb.TagNumber(7)
  ReadingData get fanSpeed => $_getN(6);
  @$pb.TagNumber(7)
  set fanSpeed(ReadingData v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasFanSpeed() => $_has(6);
  @$pb.TagNumber(7)
  void clearFanSpeed() => clearField(7);
  @$pb.TagNumber(7)
  ReadingData ensureFanSpeed() => $_ensure(6);
}

class GpuReadings extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GpuReadings', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sensorcomms'), createEmptyInstance: create)
    ..aOM<ReadingData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'temp', subBuilder: ReadingData.create)
    ..aOM<ReadingData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hotSpotTemp', protoName: 'hotSpotTemp', subBuilder: ReadingData.create)
    ..aOM<ReadingData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clock', subBuilder: ReadingData.create)
    ..aOM<ReadingData>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memoryClock', protoName: 'memoryClock', subBuilder: ReadingData.create)
    ..pc<ReadingData>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fanSpeeds', $pb.PbFieldType.PM, protoName: 'fanSpeeds', subBuilder: ReadingData.create)
    ..aOM<ReadingData>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'power', subBuilder: ReadingData.create)
    ..aOM<ReadingData>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'usage', subBuilder: ReadingData.create)
    ..aOM<ReadingData>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memoryUsage', protoName: 'memoryUsage', subBuilder: ReadingData.create)
    ..hasRequiredFields = false
  ;

  GpuReadings._() : super();
  factory GpuReadings({
    ReadingData? temp,
    ReadingData? hotSpotTemp,
    ReadingData? clock,
    ReadingData? memoryClock,
    $core.Iterable<ReadingData>? fanSpeeds,
    ReadingData? power,
    ReadingData? usage,
    ReadingData? memoryUsage,
  }) {
    final _result = create();
    if (temp != null) {
      _result.temp = temp;
    }
    if (hotSpotTemp != null) {
      _result.hotSpotTemp = hotSpotTemp;
    }
    if (clock != null) {
      _result.clock = clock;
    }
    if (memoryClock != null) {
      _result.memoryClock = memoryClock;
    }
    if (fanSpeeds != null) {
      _result.fanSpeeds.addAll(fanSpeeds);
    }
    if (power != null) {
      _result.power = power;
    }
    if (usage != null) {
      _result.usage = usage;
    }
    if (memoryUsage != null) {
      _result.memoryUsage = memoryUsage;
    }
    return _result;
  }
  factory GpuReadings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GpuReadings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GpuReadings clone() => GpuReadings()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GpuReadings copyWith(void Function(GpuReadings) updates) => super.copyWith((message) => updates(message as GpuReadings)) as GpuReadings; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GpuReadings create() => GpuReadings._();
  GpuReadings createEmptyInstance() => create();
  static $pb.PbList<GpuReadings> createRepeated() => $pb.PbList<GpuReadings>();
  @$core.pragma('dart2js:noInline')
  static GpuReadings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GpuReadings>(create);
  static GpuReadings? _defaultInstance;

  @$pb.TagNumber(1)
  ReadingData get temp => $_getN(0);
  @$pb.TagNumber(1)
  set temp(ReadingData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTemp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemp() => clearField(1);
  @$pb.TagNumber(1)
  ReadingData ensureTemp() => $_ensure(0);

  @$pb.TagNumber(2)
  ReadingData get hotSpotTemp => $_getN(1);
  @$pb.TagNumber(2)
  set hotSpotTemp(ReadingData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHotSpotTemp() => $_has(1);
  @$pb.TagNumber(2)
  void clearHotSpotTemp() => clearField(2);
  @$pb.TagNumber(2)
  ReadingData ensureHotSpotTemp() => $_ensure(1);

  @$pb.TagNumber(3)
  ReadingData get clock => $_getN(2);
  @$pb.TagNumber(3)
  set clock(ReadingData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasClock() => $_has(2);
  @$pb.TagNumber(3)
  void clearClock() => clearField(3);
  @$pb.TagNumber(3)
  ReadingData ensureClock() => $_ensure(2);

  @$pb.TagNumber(4)
  ReadingData get memoryClock => $_getN(3);
  @$pb.TagNumber(4)
  set memoryClock(ReadingData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMemoryClock() => $_has(3);
  @$pb.TagNumber(4)
  void clearMemoryClock() => clearField(4);
  @$pb.TagNumber(4)
  ReadingData ensureMemoryClock() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<ReadingData> get fanSpeeds => $_getList(4);

  @$pb.TagNumber(6)
  ReadingData get power => $_getN(5);
  @$pb.TagNumber(6)
  set power(ReadingData v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPower() => $_has(5);
  @$pb.TagNumber(6)
  void clearPower() => clearField(6);
  @$pb.TagNumber(6)
  ReadingData ensurePower() => $_ensure(5);

  @$pb.TagNumber(7)
  ReadingData get usage => $_getN(6);
  @$pb.TagNumber(7)
  set usage(ReadingData v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUsage() => $_has(6);
  @$pb.TagNumber(7)
  void clearUsage() => clearField(7);
  @$pb.TagNumber(7)
  ReadingData ensureUsage() => $_ensure(6);

  @$pb.TagNumber(8)
  ReadingData get memoryUsage => $_getN(7);
  @$pb.TagNumber(8)
  set memoryUsage(ReadingData v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasMemoryUsage() => $_has(7);
  @$pb.TagNumber(8)
  void clearMemoryUsage() => clearField(8);
  @$pb.TagNumber(8)
  ReadingData ensureMemoryUsage() => $_ensure(7);
}

class SystemReadings extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SystemReadings', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sensorcomms'), createEmptyInstance: create)
    ..aOM<ReadingData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memoryClock', protoName: 'memoryClock', subBuilder: ReadingData.create)
    ..aOM<ReadingData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ramLoad', protoName: 'ramLoad', subBuilder: ReadingData.create)
    ..pc<ReadingData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storageTemps', $pb.PbFieldType.PM, protoName: 'storageTemps', subBuilder: ReadingData.create)
    ..aOM<ReadingData>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'power', subBuilder: ReadingData.create)
    ..aOM<ReadingData>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chargeLevel', protoName: 'chargeLevel', subBuilder: ReadingData.create)
    ..hasRequiredFields = false
  ;

  SystemReadings._() : super();
  factory SystemReadings({
    ReadingData? memoryClock,
    ReadingData? ramLoad,
    $core.Iterable<ReadingData>? storageTemps,
    ReadingData? power,
    ReadingData? chargeLevel,
  }) {
    final _result = create();
    if (memoryClock != null) {
      _result.memoryClock = memoryClock;
    }
    if (ramLoad != null) {
      _result.ramLoad = ramLoad;
    }
    if (storageTemps != null) {
      _result.storageTemps.addAll(storageTemps);
    }
    if (power != null) {
      _result.power = power;
    }
    if (chargeLevel != null) {
      _result.chargeLevel = chargeLevel;
    }
    return _result;
  }
  factory SystemReadings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SystemReadings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SystemReadings clone() => SystemReadings()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SystemReadings copyWith(void Function(SystemReadings) updates) => super.copyWith((message) => updates(message as SystemReadings)) as SystemReadings; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SystemReadings create() => SystemReadings._();
  SystemReadings createEmptyInstance() => create();
  static $pb.PbList<SystemReadings> createRepeated() => $pb.PbList<SystemReadings>();
  @$core.pragma('dart2js:noInline')
  static SystemReadings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SystemReadings>(create);
  static SystemReadings? _defaultInstance;

  @$pb.TagNumber(1)
  ReadingData get memoryClock => $_getN(0);
  @$pb.TagNumber(1)
  set memoryClock(ReadingData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMemoryClock() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemoryClock() => clearField(1);
  @$pb.TagNumber(1)
  ReadingData ensureMemoryClock() => $_ensure(0);

  @$pb.TagNumber(2)
  ReadingData get ramLoad => $_getN(1);
  @$pb.TagNumber(2)
  set ramLoad(ReadingData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRamLoad() => $_has(1);
  @$pb.TagNumber(2)
  void clearRamLoad() => clearField(2);
  @$pb.TagNumber(2)
  ReadingData ensureRamLoad() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<ReadingData> get storageTemps => $_getList(2);

  @$pb.TagNumber(4)
  ReadingData get power => $_getN(3);
  @$pb.TagNumber(4)
  set power(ReadingData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPower() => $_has(3);
  @$pb.TagNumber(4)
  void clearPower() => clearField(4);
  @$pb.TagNumber(4)
  ReadingData ensurePower() => $_ensure(3);

  @$pb.TagNumber(5)
  ReadingData get chargeLevel => $_getN(4);
  @$pb.TagNumber(5)
  set chargeLevel(ReadingData v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasChargeLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearChargeLevel() => clearField(5);
  @$pb.TagNumber(5)
  ReadingData ensureChargeLevel() => $_ensure(4);
}

class ComputerInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ComputerInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sensorcomms'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ComputerInfoRequest._() : super();
  factory ComputerInfoRequest() => create();
  factory ComputerInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComputerInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ComputerInfoRequest clone() => ComputerInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ComputerInfoRequest copyWith(void Function(ComputerInfoRequest) updates) => super.copyWith((message) => updates(message as ComputerInfoRequest)) as ComputerInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ComputerInfoRequest create() => ComputerInfoRequest._();
  ComputerInfoRequest createEmptyInstance() => create();
  static $pb.PbList<ComputerInfoRequest> createRepeated() => $pb.PbList<ComputerInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static ComputerInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComputerInfoRequest>(create);
  static ComputerInfoRequest? _defaultInstance;
}

class MonitorRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MonitorRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sensorcomms'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceName', protoName: 'deviceName')
    ..hasRequiredFields = false
  ;

  MonitorRequest._() : super();
  factory MonitorRequest({
    $core.String? deviceName,
  }) {
    final _result = create();
    if (deviceName != null) {
      _result.deviceName = deviceName;
    }
    return _result;
  }
  factory MonitorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MonitorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MonitorRequest clone() => MonitorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MonitorRequest copyWith(void Function(MonitorRequest) updates) => super.copyWith((message) => updates(message as MonitorRequest)) as MonitorRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MonitorRequest create() => MonitorRequest._();
  MonitorRequest createEmptyInstance() => create();
  static $pb.PbList<MonitorRequest> createRepeated() => $pb.PbList<MonitorRequest>();
  @$core.pragma('dart2js:noInline')
  static MonitorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MonitorRequest>(create);
  static MonitorRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceName() => clearField(1);
}

class ComputerInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ComputerInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'sensorcomms'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'computerName', protoName: 'computerName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'systemMake', protoName: 'systemMake')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cpuName', protoName: 'cpuName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpuName', protoName: 'gpuName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memory')
    ..pPS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storageNames', protoName: 'storageNames')
    ..pc<ComputerInfo_StorageType>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storageTypes', $pb.PbFieldType.PE, protoName: 'storageTypes', valueOf: ComputerInfo_StorageType.valueOf, enumValues: ComputerInfo_StorageType.values)
    ..e<ComputerInfo_SystemType>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'systemType', $pb.PbFieldType.OE, protoName: 'systemType', defaultOrMaker: ComputerInfo_SystemType.DESKTOP, valueOf: ComputerInfo_SystemType.valueOf, enumValues: ComputerInfo_SystemType.values)
    ..hasRequiredFields = false
  ;

  ComputerInfo._() : super();
  factory ComputerInfo({
    $core.String? computerName,
    $core.String? systemMake,
    $core.String? cpuName,
    $core.String? gpuName,
    $core.String? memory,
    $core.Iterable<$core.String>? storageNames,
    $core.Iterable<ComputerInfo_StorageType>? storageTypes,
    ComputerInfo_SystemType? systemType,
  }) {
    final _result = create();
    if (computerName != null) {
      _result.computerName = computerName;
    }
    if (systemMake != null) {
      _result.systemMake = systemMake;
    }
    if (cpuName != null) {
      _result.cpuName = cpuName;
    }
    if (gpuName != null) {
      _result.gpuName = gpuName;
    }
    if (memory != null) {
      _result.memory = memory;
    }
    if (storageNames != null) {
      _result.storageNames.addAll(storageNames);
    }
    if (storageTypes != null) {
      _result.storageTypes.addAll(storageTypes);
    }
    if (systemType != null) {
      _result.systemType = systemType;
    }
    return _result;
  }
  factory ComputerInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComputerInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ComputerInfo clone() => ComputerInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ComputerInfo copyWith(void Function(ComputerInfo) updates) => super.copyWith((message) => updates(message as ComputerInfo)) as ComputerInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ComputerInfo create() => ComputerInfo._();
  ComputerInfo createEmptyInstance() => create();
  static $pb.PbList<ComputerInfo> createRepeated() => $pb.PbList<ComputerInfo>();
  @$core.pragma('dart2js:noInline')
  static ComputerInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComputerInfo>(create);
  static ComputerInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get computerName => $_getSZ(0);
  @$pb.TagNumber(1)
  set computerName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasComputerName() => $_has(0);
  @$pb.TagNumber(1)
  void clearComputerName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get systemMake => $_getSZ(1);
  @$pb.TagNumber(2)
  set systemMake($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSystemMake() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystemMake() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get cpuName => $_getSZ(2);
  @$pb.TagNumber(3)
  set cpuName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCpuName() => $_has(2);
  @$pb.TagNumber(3)
  void clearCpuName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get gpuName => $_getSZ(3);
  @$pb.TagNumber(4)
  set gpuName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGpuName() => $_has(3);
  @$pb.TagNumber(4)
  void clearGpuName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get memory => $_getSZ(4);
  @$pb.TagNumber(5)
  set memory($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMemory() => $_has(4);
  @$pb.TagNumber(5)
  void clearMemory() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get storageNames => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<ComputerInfo_StorageType> get storageTypes => $_getList(6);

  @$pb.TagNumber(8)
  ComputerInfo_SystemType get systemType => $_getN(7);
  @$pb.TagNumber(8)
  set systemType(ComputerInfo_SystemType v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasSystemType() => $_has(7);
  @$pb.TagNumber(8)
  void clearSystemType() => clearField(8);
}

