import 'package:flutter_playground/root/root_page.dart';
import 'package:flutter_playground/simple_list/simple_list_page.dart';
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
              name: 'simpleList',
              path: 'simple_list',
              builder: (context, state) {
                return const SimpleListPage();
              },
            ),
          ]),
    ],
  );
});
