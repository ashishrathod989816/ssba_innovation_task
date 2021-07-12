import 'package:json_annotation/json_annotation.dart';
import 'package:ssba_task/Models/project.dart';
part 'past_experience_model.g.dart';

@JsonSerializable()
class Experience {
  Experience({
    this.organizationName,
    this.designation,
    this.totalExperience,
    this.technology,
    this.fromDate,
    this.toDate,
    this.projects,
  });
  @JsonKey(name: "organizationName")
  String? organizationName;
  @JsonKey(name: "designation")
  String? designation;
  @JsonKey(name: "totalExperience")
  String? totalExperience;
  @JsonKey(name: "technology")
  String? technology;
  @JsonKey(name: "fromDate")
  String? fromDate;
  @JsonKey(name: "toDate")
  String? toDate;

  @JsonKey(name: "projects")
  List<Project>? projects;

  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json
          // organizationName: json["organizationName"],
          // designation: json["designation"],
          // totalExperience: json["totalExperience"],
          // technology: json["technology"],
          // fromDate: json["fromDate"],
          // toDate: json["toDate"],
          // projects: List<Project>.from(
          //     json["projects"].map((x) => Project.fromJson(x))),
          );

  // Map<String, dynamic> toJson() => {
  //       "organizationName": organizationName,
  //       "designation": designation,
  //       "totalExperience": totalExperience,
  //       "technology": technology,
  //       "fromDate": fromDate,
  //       "toDate": toDate,
  //       "projects": List<dynamic>.from(projects!.map((x) => x.toJson())),
  //     };
}
