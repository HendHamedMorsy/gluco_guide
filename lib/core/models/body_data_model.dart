import 'package:flutter/foundation.dart';

@immutable
class BodyData {
  final String? bodyInfoTitle;
  final int? id;
  final bool? isSelected;
  final String? weight;
  final String? height;
  final String? age;
  final String? waistCircumference;
  final String? neckCircumference;
  final String? hipCircumference;
  final String? lifeStyleType;
  final String? diabetesType;

  const BodyData(
      {this.bodyInfoTitle,
        this.id,
      this.isSelected,
      this.height,
      this.weight,
      this.neckCircumference,
      this.waistCircumference,
      this.age,
      this.diabetesType,
      this.hipCircumference,
      this.lifeStyleType});

  BodyData copyWith({
    String? bodyInfoTitle,
    int? id,
    bool? isSelected,
    String? weight,
    String? height,
    String? age,
    String? waistCircumference,
    String? neckCircumference,
    String? hipCircumference,
    String? lifeStyleType,
    String? diabetesType,
  }) {
    return BodyData(
      bodyInfoTitle: bodyInfoTitle ?? this.bodyInfoTitle,
      id: id ?? this.id,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      age: age ?? this.age,
      waistCircumference: waistCircumference ?? this.waistCircumference,
      hipCircumference: hipCircumference ?? this.hipCircumference,
      neckCircumference: neckCircumference ?? this.neckCircumference,
      diabetesType: diabetesType ?? this.diabetesType,
      lifeStyleType: lifeStyleType ?? this.lifeStyleType,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
