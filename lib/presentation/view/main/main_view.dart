import 'package:flutter/material.dart';
import 'package:kirala/presentation/resources/image_manager.dart';
import 'package:kirala/presentation/resources/string_manager.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.mainViewAppBarTitle),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => SingleChildScrollView(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .95,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const ImageIcon(
                                  AssetImage(ImageManager.backArrow),
                                ),
                              ),
                              Text(
                                AppStrings.bottomSheetHeadTitle,
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            child: const Text('Express Yourself')),
      ),
    );
  }
}
