import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:utils_widget/utils_widget.dart';
import 'data/env.dart';
import 'website/router.dart';
import 'utils/apiclient.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ApiClient.client
      .setEndpoint(Env.endpoint)
      .setProject(Env.projectId)
      .setSelfSigned(status: true);

      await Hive.initFlutter();
  runApp(
    const ProviderScope(
      child: OverlayNotification.global(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        //  useMaterial3: true,
      ),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
