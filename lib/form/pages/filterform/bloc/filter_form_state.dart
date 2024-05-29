import 'package:equatable/equatable.dart';

class FilterFormState extends Equatable {
  final String selectedButton;
  final String selectedCityButton;
  final String selectedFormType;
  final String selectedBrand;
  final String selectedVerification;
  final List<dynamic> filteredData;

  const FilterFormState({
    required this.selectedButton,
    required this.selectedCityButton,
    required this.selectedFormType,
    required this.selectedBrand,
    required this.selectedVerification,
    required this.filteredData 
  });

  FilterFormState copyWith({
    String? selectedButton,
    String? selectedCityButton,
    String? selectedFormType,
    String? selectedBrand,
    String? selectedVerification,
    List<dynamic>? filteredData,
  }) {
    return FilterFormState(
        selectedButton: selectedButton ?? this.selectedButton,
        selectedCityButton: selectedCityButton ?? this.selectedCityButton,
        selectedFormType: selectedFormType ?? this.selectedFormType,
        selectedBrand: selectedBrand ?? this.selectedBrand,
        selectedVerification: selectedVerification ?? this.selectedVerification,
        filteredData: filteredData ?? this.filteredData);
  }

  @override
  List<Object?> get props => [
        selectedButton,
        selectedCityButton,
        selectedFormType,
        selectedBrand,
        selectedVerification,
        filteredData
      ];
}
