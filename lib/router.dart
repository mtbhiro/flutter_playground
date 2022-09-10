import 'package:flutter_playground/root/root_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final routerProvider = Provider((ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: [
      GoRoute(
          name: 'root',
          path: '/',
          builder: (context, state) {
            return const RootPage();
          },
          routes: [
            GoRoute(
              name: 'sample',
              path: 'sample',
              builder: (context, state) {
                return const RootPage();
              },
            ),
          ]),
    ],
  );
});
