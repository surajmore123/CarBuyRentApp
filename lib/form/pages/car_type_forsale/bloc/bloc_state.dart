import 'dart:io';

import 'package:equatable/equatable.dart';



class FormUpdateState extends Equatable {
  final String selectedButton;
  final String selectedBrandButton;
  final String updateSelectedVeriCarValue;
  final String? selectedCity;
  final String selectedYear;
  final String updatedSelectedTyreValue;
  final String updatedSelectedAccidentalValue;
  final String? selectedColor;
  final bool imageSelected;
  final File? image;
  final bool load;

  const FormUpdateState({
    required this.selectedButton,
    required this.selectedBrandButton,
    required this.updateSelectedVeriCarValue,
    required this.selectedCity,
    required this.selectedYear,
    required this.updatedSelectedTyreValue,
    required this.updatedSelectedAccidentalValue,
    required this.selectedColor,
    this.imageSelected = false,
    this.image,
    required this.load,
  });

  FormUpdateState copyWith({
    String? selectedButton,
    String? selectedBrandButton,
    String? updateSelectedVeriCarValue,
    String? selectedCity,
    String? selectedYear,
    String? updatedSelectedTyreValue,
    String? updatedSelectedAccidentalValue,
    String? selectedColor,
    bool? imageSelected,
    File? image,
    bool? load,
  }) {
    return FormUpdateState(
        selectedButton: selectedButton ?? this.selectedButton,
        selectedBrandButton: selectedBrandButton ?? this.selectedBrandButton,
        updateSelectedVeriCarValue:
            updateSelectedVeriCarValue ?? this.updateSelectedVeriCarValue,
        selectedCity: selectedCity ?? this.selectedCity,
        selectedYear: selectedYear ?? this.selectedYear,
        updatedSelectedTyreValue:
            updatedSelectedTyreValue ?? this.updatedSelectedTyreValue,
        updatedSelectedAccidentalValue: updatedSelectedAccidentalValue ??
            this.updatedSelectedAccidentalValue,
        selectedColor: selectedColor ?? this.selectedColor,
        imageSelected: imageSelected ?? this.imageSelected,
        image: image ?? this.image,
        load: load ?? this.load);
  }

  @override
  List<Object?> get props => [
        selectedButton,
        selectedBrandButton,
        updateSelectedVeriCarValue,
        selectedCity,
        selectedYear,
        updatedSelectedTyreValue,
        updatedSelectedAccidentalValue,
        selectedColor,
        imageSelected,
        image,
        load,
      ];
}



