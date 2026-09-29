import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app.dart';
import 'bootstrap/seed_data_lt.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('lt');

  runApp(
    ProviderScope(
      child: Consumer(
        builder: (context, ref, child) {
          return const _DemoLtHost();
        },
      ),
    ),
  );
}

class _DemoLtHost extends ConsumerStatefulWidget {
  const _DemoLtHost();

  @override
  ConsumerState<_DemoLtHost> createState() => _DemoLtHostState();
}

class _DemoLtHostState extends ConsumerState<_DemoLtHost> {
  bool _seeded = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await seedLithuanianDemoData(ref);
      if (mounted) {
        setState(() => _seeded = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_seeded) {
      return const MaterialApp(
        home: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    }

    return const RememberLastApp();
  }
}
