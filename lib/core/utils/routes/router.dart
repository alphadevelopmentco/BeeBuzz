// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import '../../../authentication.dart';

class AppRouter {
  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) =>  const Authentication(),
      ),
    ],
  );

  GoRouter get router => _router;
}
