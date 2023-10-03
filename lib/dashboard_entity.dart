import 'package:json_annotation/json_annotation.dart';

part 'dashboard_entity.g.dart';

@JsonSerializable()
class DashboardEntity {
  const DashboardEntity(this.semente, this.temperatura, this.umidade, this.luminosidade, this.ultimaAtualizacao, this.npk);

  final String semente;
  final String temperatura;
  final String umidade;
  final String luminosidade;
  final String ultimaAtualizacao;
  final Npk npk;

  factory DashboardEntity.fromJson(Map<String, dynamic> json) =>
      _$DashboardEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DashboardEntityToJson(this);
}

@JsonSerializable()
class Npk {
  const Npk(this.nitrato, this.potassio, this.fosforo);

  final String nitrato;
  final String potassio;
  final String fosforo;

  factory Npk.fromJson(Map<String, dynamic> json) =>
      _$NpkFromJson(json);

  Map<String, dynamic> toJson() => _$NpkToJson(this);
}
