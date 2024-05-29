import 'package:flutter/material.dart';
import 'package:newcarapp/form/config/router.dart';

import 'form/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
    

  runApp( MyApp( appRouter: AppRouter(),));
}


