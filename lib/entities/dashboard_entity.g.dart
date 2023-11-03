// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardEntity _$DashboardEntityFromJson(Map<String, dynamic> json) =>
    DashboardEntity(
      json['semente'] as String,
      json['temperatura'] as String,
      json['umidade'] as String,
      json['luminosidade'] as String,
      json['ultimaAtualizacao'] as String,
      Npk.fromJson(json['npk'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DashboardEntityToJson(DashboardEntity instance) =>
    <String, dynamic>{
      'semente': instance.semente,
      'temperatura': instance.temperatura,
      'umidade': instance.umidade,
      'luminosidade': instance.luminosidade,
      'ultimaAtualizacao': instance.ultimaAtualizacao,
      'npk': instance.npk,
    };

Npk _$NpkFromJson(Map<String, dynamic> json) => Npk(
      json['nitrato'] as String,
      json['potassio'] as String,
      json['fosforo'] as String,
    );

Map<String, dynamic> _$NpkToJson(Npk instance) => <String, dynamic>{
      'nitrato': instance.nitrato,
      'potassio': instance.potassio,
      'fosforo': instance.fosforo,
    };
