import 'package:components/src/pages/card_page.dart';
import 'package:components/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'EN'), // English, no country code
        Locale('es', 'ES'), // Spanish, no country code
      ],
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      //home: HomePage(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      //crear ruta dinámicas, las rutas dinámicas son llamadas cuando se invoca una ruta y no está especificada en la propiedad "routes"
      onGenerateRoute: (settings) {
        print(
            'Recuerda que la impresion de una variable se hace de la siguiente manera ${settings.name}');
        return MaterialPageRoute(builder: (context) => CardPage());
      },
    );
  }
}
