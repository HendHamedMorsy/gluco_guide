import 'package:flutter/foundation.dart';

@immutable
class NotificationData {
  final int? id;
  final String? name;
  final String? imageUrl;
  final String? desc;
  final bool? isSelected;

  const NotificationData(
      {this.name, this.isSelected, this.id, this.imageUrl, this.desc});

  NotificationData copyWith(
      {String? name,
        bool? isSelected,
        int? id,
        String? imageUrl,
        String? desc}) {
    return NotificationData(
        name: name ?? this.name,
        isSelected: isSelected ?? this.isSelected,
        id: id ?? this.id,
        imageUrl: imageUrl ?? this.imageUrl,
        desc: desc ?? this.desc);
  }
}
