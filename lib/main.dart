import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                String.fromEnvironment(
                  'API_SEGURIDAD_URL',
                  defaultValue: 'Enviroment api_seguridad_url',
                ),
              ),
              Text(
                String.fromEnvironment(
                  'API_NSV_URL',
                  defaultValue: 'Enviroment api_nsv_url',
                ),
              ),
              Text(
                String.fromEnvironment(
                  'LABEL_VERSION',
                  defaultValue: 'Enviroment label_version',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
