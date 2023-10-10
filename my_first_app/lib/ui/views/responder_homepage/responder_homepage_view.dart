import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'responder_homepage_viewmodel.dart';

class ResponderHomepageView extends StackedView<ResponderHomepageViewModel> {
  const ResponderHomepageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ResponderHomepageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responder Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Welcome, [Responder Name]!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to alerts screen
              },
              child: const Text('View Alerts'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to clusters screen
              },
              child: const Text('View Clusters'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to profile screen
              },
              child: const Text('View Profile'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Sign out logic
              },
              child: const Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  ResponderHomepageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResponderHomepageViewModel();
}
