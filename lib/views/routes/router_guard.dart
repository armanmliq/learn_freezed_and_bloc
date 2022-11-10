import 'package:auto_route/auto_route.dart';
import 'package:learn_freezed_1/views/routes/app_router.gr.dart';
import '../../logic/bloc/authentication/auth_bloc.dart';

class RouteGuardToLogin extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    String? userId = await AuthBloc().readAccessToken();
    if (userId == null) {
      resolver.next(true);
    } else {
      router.push(const LoginRoute());
    }
  }
}
