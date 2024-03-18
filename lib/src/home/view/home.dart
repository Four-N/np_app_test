import 'package:flutter/material.dart';

import '../widget/widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1600,
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/banner.png'),
                  ),
                ),
              ),
              const Positioned(
                top: 20.0,
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
                top: 300,
                child: MenuDescriptionSection(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              height: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.black12,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _MenuIncreaseButton(),
                  _AddCartButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuIncreaseButton extends StatelessWidget {
  const _MenuIncreaseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      width: 110,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove, size: 10),
          ),
          const Text('2'),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class _AddCartButton extends StatelessWidget {
  const _AddCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 200),
      decoration: BoxDecoration(
        color: Colors.tealAccent[400],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          disabledBackgroundColor: Colors.transparent,
          elevation: 0,
          padding: const EdgeInsets.all(20),
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
        ),
        child: const Text(
          '฿ 28 | Add to cart',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
