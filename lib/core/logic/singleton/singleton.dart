// ignore_for_file: depend_on_referenced_packages

// Dart imports:
import 'dart:io';

// Package imports:
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import '../../constants/material_design/k_colors.dart';
import '../../constants/material_design/k_fonts.dart';
import '../../constants/material_design/k_icons.dart';
import '../../constants/material_design/k_images.dart';
import '../../constants/material_design/k_keys.dart';
import '../../constants/material_design/k_text.dart';
import '../../constants/server/caching_services.dart';
import '../../utils/routes/router.dart';
import '../database/database_configuration.dart';
import '../database/database_queries.dart';

final GetIt getIt = GetIt.instance;

Future<void> singletone()async{
  Directory dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  await Hive.openBox<dynamic>('myBox');
  final box = Hive.box('myBox');
  getIt.registerLazySingleton(() => CachingServices(box));
  getIt.registerLazySingleton(() => KColors());
  getIt.registerLazySingleton(() => AppRouter());
  //getIt.registerLazySingleton(() => ServerConfiguration());
  //getIt.registerLazySingleton(() => Repository());
  //getIt.registerLazySingleton(() => ConfigNetwork);
  getIt.registerLazySingleton(() => KFonts());
  getIt.registerLazySingleton(() => KIcons());
  getIt.registerLazySingleton(() => KImages());
  getIt.registerLazySingleton(() => KText());
  getIt.registerLazySingleton(() => ConfigurationDatabase());
  getIt.registerLazySingleton(() => KKeys());
  //getIt.registerLazySingleton(() => Request());
  getIt.registerLazySingleton(() => DatabaseQueries());
}
