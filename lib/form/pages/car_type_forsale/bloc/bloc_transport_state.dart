import 'dart:io';

import 'package:equatable/equatable.dart';

class TransportFormUpdate extends Equatable {
  final String selectedButton;
  final String selectedBrand;
  final String selectedVerificationValue;
  final String? selectedCity;
  final String? selectedYear;
  final String tyreValue;
  final String accidentalValue;
  final String? selectedColor;
  final bool imageSelected;
  final File? image;
  final bool load;

  const TransportFormUpdate({
    required this.selectedButton,
    required this.selectedBrand,
    required this.selectedVerificationValue,
    required this.selectedCity,
    required this.selectedYear,
    required this.tyreValue,
    required this.accidentalValue,
    required this.selectedColor,
    this.imageSelected = false,
    this.image,
    required this.load,
  });

  TransportFormUpdate copyWith({
    String? selectedButton,
    String? selectedBrand,
    String? selectedCity,
    String? selectedVerificationValue,
    String? selectedYear,
    String? tyreValue,
    String? accidentalValue,
    String? selectedColor,
    bool? imageSelected,
    File? image,
    bool? load,
  }) {
    return TransportFormUpdate(
        selectedButton: selectedButton ?? this.selectedButton,
        selectedBrand: selectedBrand ?? this.selectedBrand,
        selectedVerificationValue:
            selectedVerificationValue ?? this.selectedVerificationValue,
        selectedCity: selectedCity ?? this.selectedCity,
        selectedYear: selectedYear ?? this.selectedYear,
        tyreValue: tyreValue ?? this.tyreValue,
        accidentalValue: accidentalValue ?? this.accidentalValue,
        selectedColor: selectedColor ?? this.selectedColor,
        imageSelected: imageSelected ?? this.imageSelected,
        image: image ?? this.image,
        load: load ?? this.load);
  }

  @override
  List<Object?> get props => [
        selectedButton,
        selectedBrand,
        selectedVerificationValue,
        selectedCity,
        selectedYear,
        tyreValue,
        accidentalValue,
        selectedColor,
        imageSelected,
        image,
        load,
      ];
}
