import 'package:auto_route/auto_route.dart';
import 'package:learn_freezed_1/views/bank_account/bank_accounts_view.dart';
import 'package:learn_freezed_1/views/main.dart';
import 'package:learn_freezed_1/views/routes/router_guard.dart';
import '../authentication/login_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage),
    AutoRoute(page: FirstPage, guards: [
      RouteGuardToLogin,
    ]),
    AutoRoute(
      page: SecondPage,
      guards: [
        RouteGuardToLogin,
      ],
    ),
    AutoRoute(
      page: ThirdPage,
      guards: [
        RouteGuardToLogin,
      ],
    ),
    AutoRoute(
      page: BankAccountWrapperRoute,
      initial: true,
      guards: [
        RouteGuardToLogin,
      ],
    ),
  ],
)
// extend the generated private router
class $AppRouter {}
