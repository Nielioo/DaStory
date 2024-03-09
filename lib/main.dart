import 'package:dastory/feature/language/bloc/language_bloc.dart';
import 'package:dastory/main_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => LanguageBloc(),
    child: const MainApp(),
  ));
}
