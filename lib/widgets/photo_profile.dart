import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(999),
      // child: Image.network(
      //   'https://as2.ftcdn.net/v2/jpg/00/64/67/63/1000_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg',
        // 'https://i1.rgstatic.net/ii/profile.image/975868956524546-1609676698776_Q512/Prastyo-Susanto.jpg',
        child: Image.asset(
          'assets/image/p.jpeg',
        height: 100,
        width: 100,
      ),
    );
  }
}
