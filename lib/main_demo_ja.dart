import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app.dart';
import 'bootstrap/seed_data_ja.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ja');

  runApp(
    ProviderScope(
      child: Consumer(
        builder: (context, ref, child) {
          return const _DemoJaHost();
        },
      ),
    ),
  );
}

class _DemoJaHost extends ConsumerStatefulWidget {
  const _DemoJaHost();

  @override
  ConsumerState<_DemoJaHost> createState() => _DemoJaHostState();
}

class _DemoJaHostState extends ConsumerState<_DemoJaHost> {
  bool _seeded = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await seedJapaneseDemoData(ref);
      if (mounted) {
        setState(() => _seeded = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_seeded) {
      return const MaterialApp(
        home: Scaffold(body: Center(child: CircularProgressIndicator())),
      );
    }

    return const RememberLastApp();
  }
}
