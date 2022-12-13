import 'package:flutter/material.dart';
import 'package:diet_pdf/app/shared/ui/widgets/diet_form_field.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('splash')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Inicio app'),
              const DietFormField(),
              ElevatedButton(
                child: const Text('Diet Button'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
