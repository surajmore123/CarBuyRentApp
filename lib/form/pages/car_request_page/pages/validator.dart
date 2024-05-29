mixin validator{
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


  String? validPhone(String? value)
  {
   if(value == null || value.isEmpty)
   {
    return 'Phone number is required';
   }
   return null;
  }
}