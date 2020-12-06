import 'package:flutter/material.dart';

import 'package:servicesurvey/src/screens/home_screen.dart';

// Nos regresa todas las rutas de la app
Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
        '/': (BuildContext context) => HomeScreen()
  };
}

 