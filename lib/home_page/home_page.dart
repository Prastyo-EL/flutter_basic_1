import 'package:flutter/material.dart';
import 'package:flutter_basic_1/detail_page/detail_page.dart';
import 'package:flutter_basic_1/widgets/photo_profile.dart';
import 'dart:ui';
import 'package:flutter_basic_1/values.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   height: 60,
            //   width: 60,
            //   decoration: const BoxDecoration(
            //     shape: BoxShape.circle,
            //     color: Colors.lightGreen,
            //   ),
            // ),
            const PhotoProfile(),
            const SizedBox(height: 5),
            // const Text('Prastyo Eko Susanto'),
            //name
            SelectableText(
              Values.name,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            //description
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SelectableText(
                Values.description,
                style: Theme.of(context).textTheme.subtitle2,
                textAlign: TextAlign.center,
              ),
            ),
            // const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailPage(),
                    ));
              },
              child: const Text('Navigate to Detail'),
            ),
          ],
        ),
      ),
    );
  }
}
