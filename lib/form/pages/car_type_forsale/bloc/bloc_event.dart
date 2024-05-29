import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FormEvent {}

class PersonalSelected extends FormEvent {}

class TransportSelected extends FormEvent {}

class BrandSelected extends FormEvent {
  final String cbrand;

  BrandSelected(this.cbrand);
}

class UpdateVerificationValue extends FormEvent {
  final String newValue;
  UpdateVerificationValue(this.newValue);
}

class UpdateCity extends FormEvent {
  final String? selectedCity;
  UpdateCity(this.selectedCity);
}

class YearSelected extends FormEvent {
  final BuildContext context;
  YearSelected(this.context);
}

class UpdateTyre extends FormEvent {
  final String newValue;
  UpdateTyre(this.newValue);
}

class UpdateAccidental extends FormEvent {
  final String newValue;
  UpdateAccidental(this.newValue);
}

class UpdateColor extends FormEvent {
  final String? seletedColor;
  UpdateColor(this.seletedColor);
}

class ImageSelected extends FormEvent {
  final ImageSource source;
  ImageSelected(this.source);
}

class ImageStore extends FormEvent {
  final File image;
  ImageStore(this.image);
}
