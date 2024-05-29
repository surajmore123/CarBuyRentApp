mixin ValidatorPersonalRent
{
  String? validCity(String? value)
  {
    if(value ==null || value.isEmpty)
    {
      return 'Car city is required';
    }
    return null;
  }

  String? validLocation(String? value)
  {
    if(value == null || value.isEmpty)
    {
      return 'Car location is required';
    }
    return null;
  }
   String? validCarName(String?value)
   {
    if(value == null || value.isEmpty)
    {
      return 'Car name is required';
    }
    return null;
   }

   String? validCarDescription(String? value)
   {
    if(value == null || value.isEmpty)
    {
      return 'Car description is required';
    }
    return null;
   }

   String? validCarPrice(String? value)
   {
    if(value == null || value.isEmpty)
    {
      return 'Car price is required';
    }
    return null;
   }

   String? validCarColor(String? value)
   {
    if(value == null || value.isEmpty)
    {
      return 'Car color is required';
    }
    return null;
   }
}