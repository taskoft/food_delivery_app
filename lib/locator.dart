import 'package:get_it/get_it.dart';

import 'repository/auth/login/login_repository.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  // locator.registerLazySingleton(() => FoodRepository());
  locator.registerLazySingleton(() => LoginRepository());
}
