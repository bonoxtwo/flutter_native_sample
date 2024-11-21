import 'package:flutter/material.dart';
import 'main_state.dart';

class MainScreen extends StatelessWidget {
  final MainState state;
  final void Function() onGetTodo;

  const MainScreen({
    super.key,
    required this.state,
    required this.onGetTodo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Native connection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: onGetTodo,
              child: const Text('get value'),
            ),
            state.isLoading
                ? const Text('loading...')
                : Text(state.todo.toString()),
          ],
        ),
      ),
    );
  }
}
