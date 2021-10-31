import 'dart:convert';

class ScanningModel {
  ScanningModel({
    this.response,
  });

  final String? response;

  factory ScanningModel.fromRawJson(String str) =>
      ScanningModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ScanningModel.fromJson(Map<String, dynamic> json) => ScanningModel(
        response: json['response'],
      );

  Map<String, dynamic> toJson() => {
        'response': response,
      };
}
