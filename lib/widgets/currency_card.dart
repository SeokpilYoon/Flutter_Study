import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  final blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : blackColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 32,
                        color: isInverted ? Colors.black : Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            fontSize: 20,
                            color:
                                isInverted
                                    ? blackColor
                                    : Colors.white.withAlpha(200),
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          code,
                          style: TextStyle(
                            fontSize: 15,
                            color:
                                isInverted
                                    ? Colors.black
                                    : Colors.white.withAlpha(150),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.0,
              child: Transform.translate(
                offset: Offset(-5, 13),
                // child: Icon(Icons.euro_rounded, color: Colors.white, size: 65),
                child: Icon(
                  icon,
                  color: isInverted ? Colors.black : Colors.white,
                  size: 65,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
