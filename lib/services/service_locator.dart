import 'package:get_it/get_it.dart';
import 'package:weather_app_mcs/services/local_storage.dart';
import 'package:weather_app_mcs/services/web_api.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<WebApi>(() => FccApi());
  getIt.registerLazySingleton<LocalStorage>(() => SharedPrefsStorage());
}
