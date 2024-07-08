
// ignore_for_file: file_names

import 'dart:convert';

import 'package:osscam_app/core/resource/handilling.dart';

class GetTasksProjectModel extends ResultModel{
     int? taskId;
     String? taskDescription;
     String? taskStatus;
     bool? hasBugs;
     List<Bug>? bugs;
     int? taskProject;
     DateTime? taskCreateDate;
     DateTime? taskUpdateDate;
     int? taskCreatedBy;
     int? taskUpdatedBy;

    GetTasksProjectModel({
         this.taskId,
         this.taskDescription,
         this.taskStatus,
         this.hasBugs,
         this.bugs,
         this.taskProject,
         this.taskCreateDate,
         this.taskUpdateDate,
         this.taskCreatedBy,
         this.taskUpdatedBy,
    });

    GetTasksProjectModel copyWith({
        int? taskId,
        String? taskDescription,
        String? taskStatus,
        bool? hasBugs,
        List<Bug>? bugs,
        int? taskProject,
        DateTime? taskCreateDate,
        DateTime? taskUpdateDate,
        int? taskCreatedBy,
        int? taskUpdatedBy,
    }) => 
        GetTasksProjectModel(
            taskId: taskId ?? this.taskId,
            taskDescription: taskDescription ?? this.taskDescription,
            taskStatus: taskStatus ?? this.taskStatus,
            hasBugs: hasBugs ?? this.hasBugs,
            bugs: bugs ?? this.bugs,
            taskProject: taskProject ?? this.taskProject,
            taskCreateDate: taskCreateDate ?? this.taskCreateDate,
            taskUpdateDate: taskUpdateDate ?? this.taskUpdateDate,
            taskCreatedBy: taskCreatedBy ?? this.taskCreatedBy,
            taskUpdatedBy: taskUpdatedBy ?? this.taskUpdatedBy,
        );

    factory GetTasksProjectModel.fromRawJson(String str) => GetTasksProjectModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory GetTasksProjectModel.fromJson(Map<String, dynamic> json) => GetTasksProjectModel(
        taskId: json["taskId"],
        taskDescription: json["taskDescription"],
        taskStatus: json["taskStatus"],
        hasBugs: json["hasBugs"],
        bugs: List<Bug>.from(json["bugs"].map((x) => Bug.fromJson(x))),
        taskProject: json["taskProject"],
        taskCreateDate: DateTime.parse(json["taskCreateDate"]),
        taskUpdateDate: DateTime.parse(json["taskUpdateDate"]),
        taskCreatedBy: json["taskCreatedBy"],
        taskUpdatedBy: json["taskUpdatedBy"],
    );

    Map<String, dynamic> toJson() => {
        "taskId": taskId,
        "taskDescription": taskDescription,
        "taskStatus": taskStatus,
        "hasBugs": hasBugs,
        "bugs": List<dynamic>.from(bugs!.map((x) => x.toJson())),
        "taskProject": taskProject,
        "taskCreateDate": taskCreateDate?.toIso8601String(),
        "taskUpdateDate": taskUpdateDate?.toIso8601String(),
        "taskCreatedBy": taskCreatedBy,
        "taskUpdatedBy": taskUpdatedBy,
    };
}

class Bug {
    final int id;
    final String title;
    final String description;
    final int priority;
    final List<Comment> comments;
    final DateTime createDate;
    final DateTime lastModified;
    final int createdBy;
    final int lastModifiedBy;

    Bug({
        required this.id,
        required this.title,
        required this.description,
        required this.priority,
        required this.comments,
        required this.createDate,
        required this.lastModified,
        required this.createdBy,
        required this.lastModifiedBy,
    });

    Bug copyWith({
        int? id,
        String? title,
        String? description,
        int? priority,
        List<Comment>? comments,
        DateTime? createDate,
        DateTime? lastModified,
        int? createdBy,
        int? lastModifiedBy,
    }) => 
        Bug(
            id: id ?? this.id,
            title: title ?? this.title,
            description: description ?? this.description,
            priority: priority ?? this.priority,
            comments: comments ?? this.comments,
            createDate: createDate ?? this.createDate,
            lastModified: lastModified ?? this.lastModified,
            createdBy: createdBy ?? this.createdBy,
            lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy,
        );

    factory Bug.fromRawJson(String str) => Bug.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Bug.fromJson(Map<String, dynamic> json) => Bug(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        priority: json["priority"],
        comments: List<Comment>.from(json["comments"].map((x) => Comment.fromJson(x))),
        createDate: DateTime.parse(json["createDate"]),
        lastModified: DateTime.parse(json["lastModified"]),
        createdBy: json["createdBy"],
        lastModifiedBy: json["lastModifiedBy"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "priority": priority,
        "comments": List<dynamic>.from(comments.map((x) => x.toJson())),
        "createDate": createDate.toIso8601String(),
        "lastModified": lastModified.toIso8601String(),
        "createdBy": createdBy,
        "lastModifiedBy": lastModifiedBy,
    };
}

class Comment {
    final int id;
    final String comment;
    final String author;
    final DateTime createDate;
    final DateTime lastModified;
    final int createdBy;
    final int lastModifiedBy;

    Comment({
        required this.id,
        required this.comment,
        required this.author,
        required this.createDate,
        required this.lastModified,
        required this.createdBy,
        required this.lastModifiedBy,
    });

    Comment copyWith({
        int? id,
        String? comment,
        String? author,
        DateTime? createDate,
        DateTime? lastModified,
        int? createdBy,
        int? lastModifiedBy,
    }) => 
        Comment(
            id: id ?? this.id,
            comment: comment ?? this.comment,
            author: author ?? this.author,
            createDate: createDate ?? this.createDate,
            lastModified: lastModified ?? this.lastModified,
            createdBy: createdBy ?? this.createdBy,
            lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy,
        );

    factory Comment.fromRawJson(String str) => Comment.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["id"],
        comment: json["comment"],
        author: json["author"],
        createDate: DateTime.parse(json["createDate"]),
        lastModified: DateTime.parse(json["lastModified"]),
        createdBy: json["createdBy"],
        lastModifiedBy: json["lastModifiedBy"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "comment": comment,
        "author": author,
        "createDate": createDate.toIso8601String(),
        "lastModified": lastModified.toIso8601String(),
        "createdBy": createdBy,
        "lastModifiedBy": lastModifiedBy,
    };
}
