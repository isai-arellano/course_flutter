import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tok_tik/presentation/providers/discover_provider.dart';
import 'package:tok_tik/presentation/widgets/shared/video_scrollable_view.dart';

void main() => runApp(const DiscoverScreen());

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final disconverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
        body: disconverProvider.initialLoading
            ? const Center(
                child: CircularProgressIndicator(
                strokeWidth: 2,
              ))
            : VideoScrollableView(videos: disconverProvider.videos));
  }
}
