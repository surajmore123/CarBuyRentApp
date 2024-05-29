import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PersonalFormEvent {}

class PersonalSelected extends PersonalFormEvent {}

class TransportSelected extends PersonalFormEvent {}

class SelectedBrand extends PersonalFormEvent {
  final String brand;
  SelectedBrand(this.brand);
}

class RentFrequecy extends PersonalFormEvent {
  final String newValue;
  RentFrequecy(this.newValue);
}

class UpdateCity extends PersonalFormEvent {
  final String? newValue;
  UpdateCity(this.newValue);
}

class YearSelected extends PersonalFormEvent {
  final BuildContext context;
  YearSelected(this.context);
}

class UpdateTyre extends PersonalFormEvent {
  final String newValue;

  UpdateTyre(this.newValue);
}

class UpdateAccidental extends PersonalFormEvent {
  final String newValue;
  UpdateAccidental(this.newValue);
}

class UpdateColor extends PersonalFormEvent {
  final String newValue;
  UpdateColor(this.newValue);
}

class ImageSelected extends PersonalFormEvent {
  final ImageSource source;
  ImageSelected(this.source);
}

class ImageStore extends PersonalFormEvent {
  final File image;
  ImageStore(this.image);
}
