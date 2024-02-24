import 'package:flutter/foundation.dart';

@immutable
class FAQData {
  final int? id;
  final String? question;
  final String? answer;
  final bool? isSelected;

  const FAQData(
      { this.isSelected, this.id, this.answer, this.question});

  FAQData copyWith(
      {String? question,
        String? answer,
        bool? isSelected,
        int? id,}) {
    return FAQData(
        isSelected: isSelected ?? this.isSelected,
        id: id ?? this.id,
      question: question ?? this.question,
      answer: answer ?? this.answer
        );
  }
}
