import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'data/local_database.dart';
import 'home_bloc.dart';
import 'home_page.dart';
import 'services/local_database_service.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc(
          (i) => HomeBloc(i.get<LocalDatabaseService>()),
        )
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => LocalDatabaseService(LocalDatabase()),
            singleton: true)
      ];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
