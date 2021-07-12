import 'package:json_annotation/json_annotation.dart';
import 'package:ssba_task/Models/past_experience_model.dart';
import 'package:ssba_task/Models/project.dart';
part 'resume_model.g.dart';

@JsonSerializable()
class ResumeModel {
  ResumeModel({
    this.name,
    this.email,
    this.mobile,
    this.professionalSummary,
    this.socialMediaLink,
    this.dateOfBirth,
    this.userImage,
    this.hobies,
    this.collegeName,
    this.collegeAddr,
    this.cgpa,
    this.collegeProject,
    this.experience,
  });
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "email")
  String? email;

  @JsonKey(name: "mobile")
  String? mobile;
  @JsonKey(name: "professionalSummary")
  String? professionalSummary;
  @JsonKey(name: "socialMediaLink")
  String? socialMediaLink;
  @JsonKey(name: "dateOfBirth")
  String? dateOfBirth;
  @JsonKey(name: "userImage")
  String? userImage;
  @JsonKey(name: "hobies")
  List<String>? hobies;
  @JsonKey(name: "collegeName")
  String? collegeName;
  @JsonKey(name: "collegeAddr")
  String? collegeAddr;
  @JsonKey(name: "cgpa")
  String? cgpa;
  @JsonKey(name: "collegeProject")
  List<Project>? collegeProject;
  @JsonKey(name: "experience")
  List<Experience>? experience;

  factory ResumeModel.fromJson(Map<String, dynamic> json) => _$ResumeModelFromJson(json
        // name: json["name"],
        // email: json["email"],
        // mobile: json["mobile"],
        // professionalSummary: json["professionalSummary"],
        // socialMediaLink: json["socialMediaLink"],
        // dateOfBirth: json["dateOfBirth"],
        // userImage: json["userImage"],
        // hobies: List<String>.from(json["hobies"].map((x) => x)),
        // collegeName: json["collegeName"],
        // cgpa: json["cgpa"],
        // collegeProject: List<CollegeProject>.from(
        //     json["collegeProject"].map((x) => CollegeProject.fromJson(x))),
        // experience: List<Experience>.from(
        //     json["experience"].map((x) => Experience.fromJson(x))),
      );

  // Map<String, dynamic> toJson() => {
  //       "name": name,
  //       "email": email,
  //       "mobile": mobile,
  //       "professionalSummary": professionalSummary,
  //       "socialMediaLink": socialMediaLink,
  //       "dateOfBirth": dateOfBirth,
  //       "userImage": userImage,
  //       "hobies": List<dynamic>.from(hobies!.map((x) => x)),
  //       "collegeName": collegeName,
  //       "cgpa": cgpa,
  //       "collegeProject":
  //           List<dynamic>.from(collegeProject!.map((x) => x.toJson())),
  //       "experience": List<dynamic>.from(experience!.map((x) => x.toJson())),
  //     };
}


