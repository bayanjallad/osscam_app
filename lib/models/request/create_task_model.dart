// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

import '../../core/resource/handilling.dart';


class CreateTaskModel extends ResultModel {
  String taskDescription;
    String taskStatus;
  
    int project_id;
  CreateTaskModel({
    required this.taskDescription,
    required this.taskStatus,
    required this.project_id,
  });

  CreateTaskModel copyWith({
    String? taskDescription,
    String? taskStatus,
    int? project_id,
  }) {
    return CreateTaskModel(
      taskDescription: taskDescription ?? this.taskDescription,
      taskStatus: taskStatus ?? this.taskStatus,
      project_id: project_id ?? this.project_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'taskDescription': taskDescription,
      'taskStatus': taskStatus,
      'project_id': project_id,
    };
  }

  factory CreateTaskModel.fromMap(Map<String, dynamic> map) {
    return CreateTaskModel(
      taskDescription: map['taskDescription'] as String,
      taskStatus: map['taskStatus'] as String,
      project_id: map['project_id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CreateTaskModel.fromJson(String source) => CreateTaskModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CreateTaskModel(taskDescription: $taskDescription, taskStatus: $taskStatus, project_id: $project_id)';

  @override
  bool operator ==(covariant CreateTaskModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.taskDescription == taskDescription &&
      other.taskStatus == taskStatus &&
      other.project_id == project_id;
  }

  @override
  int get hashCode => taskDescription.hashCode ^ taskStatus.hashCode ^ project_id.hashCode;
}
