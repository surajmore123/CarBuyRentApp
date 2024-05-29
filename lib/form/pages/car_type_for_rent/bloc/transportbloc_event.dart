import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TransportFormEventRent {}

class PersonalCarSelected extends TransportFormEventRent {}

class TransortCarSelected extends TransportFormEventRent {}

class SelectedCarBrand extends TransportFormEventRent {
  final String brand;
  SelectedCarBrand(this.brand);
}

class UpdateRentFrequency extends TransportFormEventRent {
  final String newValue;
  UpdateRentFrequency(this.newValue);
}

class UpdateCityRent extends TransportFormEventRent {
  final String? newValue;
  UpdateCityRent(this.newValue);
}

class YearSelectedRent extends TransportFormEventRent {
  final BuildContext context;
  YearSelectedRent(this.context);
}

class UpdateTyreRent extends TransportFormEventRent
{
   final String newValue;

  UpdateTyreRent(this.newValue);
}

class UpdateAccidentalRent extends TransportFormEventRent
{
   final String newValue;
   UpdateAccidentalRent(this.newValue);
}


class UpdateColor extends TransportFormEventRent
{
  final String? newValue;
  UpdateColor(this.newValue);
}

class ImageSelected extends TransportFormEventRent {
  final ImageSource source;
  ImageSelected(this.source);
}

class ImageStore extends TransportFormEventRent {
  final File image;
  ImageStore(this.image);
}
