import 'package:json_annotation/json_annotation.dart';
part 'project.g.dart';

@JsonSerializable()
class Project {
  Project({
    this.role,
    this.projectName,
    this.description,
    this.keySkills,
    this.duration,
  });
  @JsonKey(name: "role")
  String? role;
  @JsonKey(name: "projectName")
  String? projectName;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "keySkills")
  String? keySkills;
  @JsonKey(name: "duration")
  String? duration;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json
      // projectName: json["projectName"],
      // description: json["description"],
      // keySkills: json["keySkills"],
      // duration: json["duration"],
      // role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "projectName": projectName,
        "description": description,
        "keySkills": keySkills,
        "duration": duration,
        "role": role,
      };
}
