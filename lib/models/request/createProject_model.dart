// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names
import 'dart:convert';

import 'package:osscam_app/core/resource/handilling.dart';

class CreatProjectModel extends ResultModel {
  String projectName;
  String projectDescription;
  String projectStatus;
  CreatProjectModel({
    required this.projectName,
    required this.projectDescription,
    required this.projectStatus,
  });

  CreatProjectModel copyWith({
    String? projectName,
    String? projectDescription,
    String? projectStatus,
  }) {
    return CreatProjectModel(
      projectName: projectName ?? this.projectName,
      projectDescription: projectDescription ?? this.projectDescription,
      projectStatus: projectStatus ?? this.projectStatus,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'projectDescription': projectDescription,
      'projectStatus': projectStatus,
    };
  }

  factory CreatProjectModel.fromMap(Map<String, dynamic> map) {
    return CreatProjectModel(
      projectName: map['projectName'] as String,
      projectDescription: map['projectDescription'] as String,
      projectStatus: map['projectStatus'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CreatProjectModel.fromJson(String source) => CreatProjectModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CreatProjectModel(projectName: $projectName, projectDescription: $projectDescription, projectStatus: $projectStatus)';

  @override
  bool operator ==(covariant CreatProjectModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.projectName == projectName &&
      other.projectDescription == projectDescription &&
      other.projectStatus == projectStatus;
  }

  @override
  int get hashCode => projectName.hashCode ^ projectDescription.hashCode ^ projectStatus.hashCode;
}
