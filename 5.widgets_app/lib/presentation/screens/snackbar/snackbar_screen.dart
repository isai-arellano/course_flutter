import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snack_screen';
  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
        content: const Text('Hello world'),
        action: SnackBarAction(label: 'OK', onPressed: () {}),
        duration: const Duration(seconds: 2));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Are you sure?'),
        content: const Text(
            'Dolore Lorem sint velit exercitation. Aute velit aliquip mollit in proident culpa culpa nisi fugiat cillum enim dolore sint cupidatat. Aute sint exercitation officia occaecat dolore laborum excepteur ea culpa fugiat est nostrud nulla officia. Ipsum ea qui incididunt labore non deserunt. Laborum aute id ut consectetur amet ipsum.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancel')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars and dialogs'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Labore incididunt ullamco sint dolore adipisicing laboris aliqua aute nostrud. Elit anim ea commodo reprehenderit do aliqua eu. Excepteur consequat eiusmod aute ex excepteur laboris Lorem. Irure elit amet aliqua tempor ex irure ea irure incididunt consequat laboris aliqua magna.')
                ]);
              },
              child: const Text('Used licenses')),
          FilledButton(
              onPressed: () => openDialog(context),
              child: const Text('Show dialog'))
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text('Show Snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () => showCustomSnackbar(context)),
    );
  }
}
