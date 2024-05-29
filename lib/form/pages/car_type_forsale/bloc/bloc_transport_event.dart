import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TransportFormEvent {}

class PersonalSelected extends TransportFormEvent {}

class TransportSelected extends TransportFormEvent {}

class SelectedBrand extends TransportFormEvent {
  final String brand;

  SelectedBrand(
    this.brand,
  );
}

class UpdateVerificationValue extends TransportFormEvent {
  final String newValue;
  UpdateVerificationValue(this.newValue);
}

class UpdateCity extends TransportFormEvent {
  final String? newValue;
  UpdateCity(this.newValue);
}

class YearSelected extends TransportFormEvent {
  final BuildContext context;
  YearSelected(this.context);
}

class UpdateTyre extends TransportFormEvent {
  final String newValue;
  UpdateTyre(this.newValue);
}

class UpdateAccidental extends TransportFormEvent {
  final String newValue;
  UpdateAccidental(this.newValue);
}

class UpdateColor extends TransportFormEvent {
  final String newValue;
  UpdateColor(this.newValue);
}

class ImageSelected extends TransportFormEvent {
  final ImageSource source;
  ImageSelected(this.source);
}

class ImageStore extends TransportFormEvent {
  final File image;
  ImageStore(this.image);
}
