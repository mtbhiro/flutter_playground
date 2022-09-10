import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // using screenutil
  // @override
  // Widget build(BuildContext context, WidgetRef ref) {
  //   final router = ref.watch(routerProvider);
  //   return ScreenUtilInit(
  //     designSize: const Size(375, 690),
  //     minTextAdapt: true,
  //     splitScreenMode: true,
  //     builder: (context, child) {
  //       return MaterialApp.router(
  //         title: 'My Playground App',
  //         routeInformationParser: router.routeInformationParser,
  //         routeInformationProvider: router.routeInformationProvider,
  //         routerDelegate: router.routerDelegate,
  //       );
  //     },
  //   );
  // }
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'My Playground App',
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      builder: (context, child) => ResponsiveWrapper.builder(child,
          maxWidth: 700,
          minWidth: 350,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(350, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(600, name: TABLET),
            // ResponsiveBreakpoint.resize(800, name: DESKTOP),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
    );
  }
  // @override
  // Widget build(BuildContext context, WidgetRef ref) {
  //   final router = ref.watch(routerProvider);
  //   return MaterialApp.router(
  //     title: 'My Playground App',
  //     routeInformationParser: router.routeInformationParser,
  //     routeInformationProvider: router.routeInformationProvider,
  //     routerDelegate: router.routerDelegate,
  //     builder: (context, child) {
  //       return Container(
  //         color: Colors.white,
  //         child: Center(
  //           child: ConstrainedBox(
  //             constraints: const BoxConstraints(maxWidth: 700),
  //             child: child,
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
