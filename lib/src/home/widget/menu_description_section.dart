import 'package:flutter/material.dart';

class MenuDescriptionSection extends StatelessWidget {
  const MenuDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 20.0,
          ),
          height: 615,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Column(
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
                  Padding(
                    padding: const EdgeInsets.only(left: 0.1, right: 0.1),
                    child: Row(
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
                        const Text(
                          '4.5',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '1287 comments',
                        ),
                      ],
                    ),
                  ),
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
                  const SizedBox(
                    height: 20,
                  ),
                  const _IntroduceSection(),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
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
          size: 16,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(text, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}

class _IntroduceSection extends StatelessWidget {
  const _IntroduceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
