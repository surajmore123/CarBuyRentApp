
class NewRequestEvent {}

class UpdateCityRequest extends NewRequestEvent {
  final String? newValue;
  UpdateCityRequest(this.newValue);
}

class UpdateToggleButton1 extends NewRequestEvent {
  final String buttonName1;
  UpdateToggleButton1(this.buttonName1);
}

class UpdateToggleButton2 extends NewRequestEvent {
  final String buttonName2;
  UpdateToggleButton2(this.buttonName2);
}