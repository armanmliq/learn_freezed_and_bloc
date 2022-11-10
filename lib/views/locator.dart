import 'package:get_it/get_it.dart';
import 'package:learn_freezed_1/logic/bloc/authentication/auth_bloc.dart';

final locator = GetIt.instance;

void setupTheLocator() {
  locator.registerSingleton(Auth());
}
