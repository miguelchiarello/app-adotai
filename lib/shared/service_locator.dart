import 'package:adotai/modules/signin/signin_controller.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => SigninController());
}
