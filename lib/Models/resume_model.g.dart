// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResumeModel _$ResumeModelFromJson(Map<String, dynamic> json) {
  return ResumeModel(
    name: json['name'] as String?,
    email: json['email'] as String?,
    mobile: json['mobile'] as String?,
    professionalSummary: json['professionalSummary'] as String?,
    socialMediaLink: json['socialMediaLink'] as String?,
    dateOfBirth: json['dateOfBirth'] as String?,
    userImage: json['userImage'] as String?,
    hobies:
        (json['hobies'] as List<dynamic>?)?.map((e) => e as String).toList(),
    collegeName: json['collegeName'] as String?,
    collegeAddr: json['collegeAddr'] as String?,
    cgpa: json['cgpa'] as String?,
    collegeProject: (json['collegeProject'] as List<dynamic>?)
        ?.map((e) => Project.fromJson(e as Map<String, dynamic>))
        .toList(),
    experience: (json['experience'] as List<dynamic>?)
        ?.map((e) => Experience.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ResumeModelToJson(ResumeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'professionalSummary': instance.professionalSummary,
      'socialMediaLink': instance.socialMediaLink,
      'dateOfBirth': instance.dateOfBirth,
      'userImage': instance.userImage,
      'hobies': instance.hobies,
      'collegeName': instance.collegeName,
      'collegeAddr': instance.collegeAddr,
      'cgpa': instance.cgpa,
      'collegeProject': instance.collegeProject,
      'experience': instance.experience,
    };
