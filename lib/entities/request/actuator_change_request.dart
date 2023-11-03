import 'package:json_annotation/json_annotation.dart';
part 'actuator_change_request.g.dart';

@JsonSerializable()
class ActuatorChangeRequest {
  const ActuatorChangeRequest(this.actuator, this.toggle);

  final String actuator;
  final String toggle;

  Map<String, dynamic> toJson() => _$ActuatorChangeRequestToJson(this);

}