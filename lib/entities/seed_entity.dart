import 'package:json_annotation/json_annotation.dart';

part 'seed_entity.g.dart';

@JsonSerializable()
class SeedEntity {
  const SeedEntity(this.temperaturaIdeal, this.umidadeIdeal, this.luminosidadeIdeal, this.nitratoIdeal, this.potassioIdeal, this.fosforoIdeal, this.phSoloIdeal);

  final String temperaturaIdeal;
  final String umidadeIdeal;
  final String luminosidadeIdeal;
  final String nitratoIdeal;
  final String potassioIdeal;
  final String fosforoIdeal;
  final String phSoloIdeal;

  factory SeedEntity.fromJson(Map<String, dynamic> json) =>
      _$SeedEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SeedEntityToJson(this);
}
