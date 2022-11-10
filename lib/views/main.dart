import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_freezed_1/logic/bloc/authentication/auth_bloc.dart';
import 'package:learn_freezed_1/models/authentication/login_model.dart';
import 'package:learn_freezed_1/views/locator.dart';
import 'package:learn_freezed_1/views/routes/app_router.gr.dart';

import '../logic/bloc/bank_account/bank_account_bloc.dart';
import 'bank_account/bank_accounts_view.dart';

void main() async {
  runApp(const Myhome());
}

class MyHomeWrapper extends StatelessWidget {
  const MyHomeWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final globalAuthBloc = AuthBloc();
    return BlocProvider(
      create: (context) => globalAuthBloc..add(const AuthEvent.appLoaded()),
      child: const Myhome(),
    );
  }
}

class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   final appRouter = AppRouter(
  //     RouteGuardToLogin: RouteGuardToLogin(),
  //   );

  //   return MaterialApp.router(
  //     routerDelegate: appRouter.delegate(),
  //     routeInformationParser: appRouter.defaultRouteParser(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: BlocProvider(
          create: (context) =>
              BankAccountBloc()..add(const BankAccountEvent.show()),
          child: const BankAccountPage(),
        ),
      ),
    );
  }
}


class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(locator<AuthModel>().accessToken),
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(const SecondRoute());
            },
            child: const Text('pindah'),
          )
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('second page'),
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(const ThirdRoute());
            },
            child: const Text('pindah'),
          )
        ],
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                isAuth: (isAuth) {
                  isAuth ? false : true;
                },
                isError: (error) {},
              );
              // TODO: implement listener
            },
            child: Center(
              child: Text('third page'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(const FirstRoute());
            },
            child: const Text('pindah'),
          )
        ],
      ),
    );
  }
}
