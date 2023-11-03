// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seed_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeedEntity _$SeedEntityFromJson(Map<String, dynamic> json) => SeedEntity(
      json['temperaturaIdeal'] as String,
      json['umidadeIdeal'] as String,
      json['luminosidadeIdeal'] as String,
      json['nitratoIdeal'] as String,
      json['potassioIdeal'] as String,
      json['fosforoIdeal'] as String,
      json['phSoloIdeal'] as String,
    );

Map<String, dynamic> _$SeedEntityToJson(SeedEntity instance) =>
    <String, dynamic>{
      'temperaturaIdeal': instance.temperaturaIdeal,
      'umidadeIdeal': instance.umidadeIdeal,
      'luminosidadeIdeal': instance.luminosidadeIdeal,
      'nitratoIdeal': instance.nitratoIdeal,
      'potassioIdeal': instance.potassioIdeal,
      'fosforoIdeal': instance.fosforoIdeal,
      'phSoloIdeal': instance.phSoloIdeal,
    };
