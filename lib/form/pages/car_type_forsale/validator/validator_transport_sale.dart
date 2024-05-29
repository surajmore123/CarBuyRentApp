mixin validatorTransportSale{

  String? validLocation(String? value)
  {
    if(value == null || value.isEmpty)
    {
      return 'Car location is required';
    }
    return null;
  }

  String? validCarName(String? value)
  {
    if(value == null || value.isEmpty)
    {
      return 'Car name is required';
    }
    return null;
  }
  String? validDescription (String? value)
  {
    if(value == null || value.isEmpty)
    {
      return 'Car description is required';
    }
    return null;
  }

  String? validPrice(String? value)
  {
   if(value == null || value.isEmpty)
   {
    return 'Car price is required';
   }
   return null;
  }

  String? validCity(String? value)
  {
    if(value ==  null || value.isEmpty)
    {
      return 'Car city is required';
    }
    return null;
  }


}