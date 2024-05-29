import 'dart:io';

import 'package:equatable/equatable.dart';

class PersonalFormUpdateState extends Equatable {
  final String selectedButton;
  final String selectedBrand;
  final String rentFrequency;
  final String? selectedCity;
  final String selectedYear;
  final String tyreValue;
  final String accidentalValue;
  final String? selectedColor;
  final bool imageSelected;
  final File? image;
  final bool load;

  const PersonalFormUpdateState({
    required this.selectedButton,
    required this.selectedBrand,
    required this.rentFrequency,
    required this.selectedCity,
    required this.selectedYear,
    required this.tyreValue,
    required this.accidentalValue,
    required this.selectedColor,
    this.imageSelected = false,
    this.image,
    required this.load,
  });

  PersonalFormUpdateState copyWith({
    String? selectedButton,
    String? selectedBrand,
    String? rentFrequency,
    String? selectedCity,
    String? selectedYear,
    String? tyreValue,
    String? accidentalValue,
    String? selectedColor,
    bool? imageSelected,
    File? image,
    bool? load,
  }) {
    return PersonalFormUpdateState(
      selectedButton: selectedButton ?? this.selectedButton,
      selectedBrand: selectedBrand ?? this.selectedBrand,
      rentFrequency: rentFrequency ?? this.rentFrequency,
      selectedCity: selectedCity ?? this.selectedCity,
      selectedYear: selectedYear ?? this.selectedYear,
      tyreValue: tyreValue ?? this.tyreValue,
      accidentalValue: accidentalValue ?? this.accidentalValue,
      selectedColor: selectedColor ?? this.selectedColor,imageSelected: imageSelected ?? this.imageSelected,
        image: image ?? this.image,
        load: load ?? this.load
    );
  }

  @override
  List<Object?> get props => [
        selectedButton,
        selectedBrand,
        rentFrequency,
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

