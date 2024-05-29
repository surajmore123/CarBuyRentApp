

abstract  class FilterFormEvent{}

class UpdateBuyRentButton extends FilterFormEvent
{
  final String buyRentButton;

  UpdateBuyRentButton(this.buyRentButton);
}  

class UpdateCityButton extends FilterFormEvent
{
  final String cityButton;

  UpdateCityButton(this.cityButton);
}

class UpdateFormType extends FilterFormEvent
{
  final String formType;

  UpdateFormType(this.formType);
  
}

class UpdateBrand extends FilterFormEvent{
  final String brand;

  UpdateBrand( this.brand);
}

class UpdateVerificationType extends FilterFormEvent
{
  final String verificationType;

  UpdateVerificationType( this.verificationType);
  
}

class ClearSelectedCity extends FilterFormEvent {}
class PerformSearch extends FilterFormEvent {}

class ResetForm extends FilterFormEvent{}





// class SelectCityFromDropdown extends FilterFormEvent {
//   final String selectedCity;

//   SelectCityFromDropdown(this.selectedCity);
// }




