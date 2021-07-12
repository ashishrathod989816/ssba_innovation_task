// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return Project(
    role: json['role'] as String?,
    projectName: json['projectName'] as String?,
    description: json['description'] as String?,
    keySkills: json['keySkills'] as String?,
    duration: json['duration'] as String?,
  );
}

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'role': instance.role,
      'projectName': instance.projectName,
      'description': instance.description,
      'keySkills': instance.keySkills,
      'duration': instance.duration,
    };
