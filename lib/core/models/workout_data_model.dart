import 'package:flutter/foundation.dart';

@immutable
class WorkoutData {
  final int? id;
  final String? name;
  final String? imageUrl;
  final String? desc;
  final bool? isSelected;

  const WorkoutData(
      {this.name, this.isSelected, this.id, this.imageUrl, this.desc});

  WorkoutData copyWith(
      {String? name,
      bool? isSelected,
      int? id,
      String? imageUrl,
      String? desc}) {
    return WorkoutData(
        name: name ?? this.name,
        isSelected: isSelected ?? this.isSelected,
        id: id ?? this.id,
        imageUrl: imageUrl ?? this.imageUrl,
        desc: desc ?? this.desc);
  }
}
