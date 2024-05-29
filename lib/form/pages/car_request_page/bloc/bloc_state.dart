import 'package:equatable/equatable.dart';

class NewRequestUpdateState extends Equatable {
  final String? selectedCity;
  final bool isVisible;


  const NewRequestUpdateState({
    required this.selectedCity,
    this.isVisible = false,
    
  });

  NewRequestUpdateState copyWith(
      {String? selectedCity, bool? isVisible = false, }) {
    return NewRequestUpdateState(
        selectedCity: selectedCity ?? this.selectedCity,
        isVisible: isVisible ?? this.isVisible,
       );
  }

  @override
  List<Object?> get props => [selectedCity, isVisible,];
}
