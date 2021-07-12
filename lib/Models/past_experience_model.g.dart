// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'past_experience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Experience _$ExperienceFromJson(Map<String, dynamic> json) {
  return Experience(
    organizationName: json['organizationName'] as String?,
    designation: json['designation'] as String?,
    totalExperience: json['totalExperience'] as String?,
    technology: json['technology'] as String?,
    fromDate: json['fromDate'] as String?,
    toDate: json['toDate'] as String?,
    projects: (json['projects'] as List<dynamic>?)
        ?.map((e) => Project.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ExperienceToJson(Experience instance) =>
    <String, dynamic>{
      'organizationName': instance.organizationName,
      'designation': instance.designation,
      'totalExperience': instance.totalExperience,
      'technology': instance.technology,
      'fromDate': instance.fromDate,
      'toDate': instance.toDate,
      'projects': instance.projects,
    };
