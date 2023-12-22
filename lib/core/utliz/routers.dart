// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// import '../../main.dart';


// abstract class MyRoute {
//   static const kSplashView = '/';

//   static GoRouter router = GoRouter(
//     routes: [
//       GoRoute(
//         path: kSplashView,
//         builder: (BuildContext context, GoRouterState state) {
//           return const MyHomePage();
//         },
//       ),
    
//     ],
//   );
// }


import 'package:flutter/material.dart';

import '../../features/auth/presentation/view/login_screen.dart';

class AppRoutes {
  static const String login = '/login';
}

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const LoginScreen(),
};