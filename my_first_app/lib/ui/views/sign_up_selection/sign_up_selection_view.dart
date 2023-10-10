import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'sign_up_selection_viewmodel.dart';

class SignUpSelectionView extends StackedView<SignUpSelectionViewModel> {
  const SignUpSelectionView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignUpSelectionViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Selection')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Add login logic here
              },
              child: const Text('I\'m a Responder'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Add login logic here
              },
              child: const Text('I\'m a Normal User'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  SignUpSelectionViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignUpSelectionViewModel();
}
