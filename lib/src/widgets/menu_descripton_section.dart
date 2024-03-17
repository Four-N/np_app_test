import 'package:flutter/material.dart';

class MenuDescriptionSection extends StatelessWidget {
  const MenuDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 20.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Fruit nutrition meal',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Wrap(
                children: List.generate(
                  5,
                  (index) {
                    return const Icon(
                      Icons.star,
                      color: Colors.amber,
                    );
                  },
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('4.5'),
              const SizedBox(
                width: 10,
              ),
              const Text('1287 comments'),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _IconText(icon: Icons.circle_sharp, text: 'Normal'),
                  _IconText(icon: Icons.location_on, text: '1.7km'),
                  _IconText(icon: Icons.access_time, text: '32min'),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Introduce',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
              'The pasta in the picture USES alkaline noodles, which many prople are not very fammiliar with. The sauce is aslo very popular with the local perple. If'),
          const SizedBox(
            height: 10,
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_down_outlined),
            label: const Text('Expand'),
          ),
          const _IntroduceSection(),
          Container(
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.grey,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _MenuIncreaseButton(),
                _AddCartButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const _IconText({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(text),
      ],
    );
  }
}

class _IntroduceSection extends StatelessWidget {
  const _IntroduceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Introduce',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
            'The pasta in the picture USES alkaline noodles, which many prople are not very fammiliar with. The sauce is aslo very popular with the local perple. If'),
        const SizedBox(
          height: 10,
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.keyboard_arrow_down_outlined),
          label: const Text('Expand'),
        ),
      ],
    );
  }
}

class _MenuIncreaseButton extends StatelessWidget {
  const _MenuIncreaseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 40,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text('2'),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
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
        borderRadius: BorderRadius.circular(100),
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
