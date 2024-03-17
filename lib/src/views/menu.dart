import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class RecommentManu extends StatefulWidget {
  const RecommentManu({super.key});

  @override
  State<RecommentManu> createState() => _RecommentManuState();
}

class _RecommentManuState extends State<RecommentManu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    width: double.maxFinite,
                    height: 350,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/banner.png'),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 40.0,
                  left: 20.0,
                  right: 20.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconsButton(icon: Icons.arrow_back),
                      IconsButton(icon: Icons.shopping_cart),
                    ],
                  ),
                ),
                const Positioned(
                    left: 0.0,
                    right: 0.0,
                    top: 200,
                    child: MenuDescriptionSection())
              ],
            )
          ],
        ),
      ),
    );
  }
}
