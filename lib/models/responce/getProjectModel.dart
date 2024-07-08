
// ignore_for_file: file_names

import 'dart:convert';

import 'package:osscam_app/core/resource/handilling.dart';

class GetProjectModel extends ResultModel{
     int? id;
     String? name;
     String? description;
     String? status;
     DateTime? createDate;
     DateTime? lastModified;
     int? createdBy;
     int? lastModifiedBy;

    GetProjectModel({
        this.id,
        this.name,
        this.description,
        this.status,
        this.createDate,
        this.lastModified,
        this.createdBy,
        this.lastModifiedBy,
    });

    GetProjectModel copyWith({
        int? id,
        String? name,
        String? description,
        String? status,
        DateTime? createDate,
        DateTime? lastModified,
        int? createdBy,
        int? lastModifiedBy,
    }) => 
        GetProjectModel(
            id: id ?? this.id,
            name: name ?? this.name,
            description: description ?? this.description,
            status: status ?? this.status,
            createDate: createDate ?? this.createDate,
            lastModified: lastModified ?? this.lastModified,
            createdBy: createdBy ?? this.createdBy,
            lastModifiedBy: lastModifiedBy ?? this.lastModifiedBy,
        );

    factory GetProjectModel.fromRawJson(String str) => GetProjectModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory GetProjectModel.fromJson(Map<String, dynamic> json) => GetProjectModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        status: json["status"],
        createDate: DateTime.parse(json["createDate"]),
        lastModified: DateTime.parse(json["lastModified"]),
        createdBy: json["createdBy"],
        lastModifiedBy: json["lastModifiedBy"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "status": status,
        "createDate": createDate?.toIso8601String(),
        "lastModified": lastModified?.toIso8601String(),
        "createdBy": createdBy,
        "lastModifiedBy": lastModifiedBy,
    };
}
