import 'package:electricharger/ui/components/fl_map/provider/fl_map_provider.dart';
import 'package:electricharger/ui/components/fl_map/view/fl_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(flMapProvider).setMyLocation(),
        backgroundColor: Colors.blue,
        child: const Icon(Icons.my_location_rounded,color: Colors.white),
      ),
      body: Stack(
        children: [
          const FlMap(),
          if (ref.watch(flMapProvider).isLoading)
            Padding(
              padding: context.top.paddingOnlyTop,
              child: const LinearProgressIndicator(),
            ),
        ],
      ),
    );
  }
}
