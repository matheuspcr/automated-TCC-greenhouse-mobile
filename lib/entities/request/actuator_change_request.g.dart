// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actuator_change_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActuatorChangeRequest _$ActuatorChangeRequestFromJson(
        Map<String, dynamic> json) =>
    ActuatorChangeRequest(
      json['actuator'] as String,
      json['toggle'] as String,
    );

Map<String, dynamic> _$ActuatorChangeRequestToJson(
        ActuatorChangeRequest instance) =>
    <String, dynamic>{
      'actuator': instance.actuator,
      'toggle': instance.toggle,
    };
