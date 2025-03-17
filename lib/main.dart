import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  // runApp(const MyApp());
  runApp(App());
}

// 1) Apple style : return CupertinoApp()
// 2) google style : return MaterialApp()
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        // appBar: AppBar(centerTitle: true, title: Text('Flutter Demo')),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hey Selena",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(color: Colors.white.withAlpha(150)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text(
                "Total Balance",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withAlpha(150),
                ),
              ),
              SizedBox(height: 5),
              Text(
                "\$5 194 582",
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w600,
                  color: Colors.white.withAlpha(150),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    text: "Transfer",
                    bgColor: Color(0xFFF1B33B),
                    textColor: Colors.black,
                  ),
                  Button(
                    text: "Required",
                    bgColor: Color(0xFF1F2123),
                    textColor: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withAlpha(150),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              CurrencyCard(
                name: 'Euro',
                amount: '6 418',
                code: 'EUP',
                icon: Icons.euro_rounded,
                isInverted: false,
              ),
              CurrencyCard(
                name: 'Bitcoin',
                amount: '55 622',
                code: 'USD',
                icon: Icons.currency_bitcoin_rounded,
                isInverted: true,
              ),
              CurrencyCard(
                name: 'Dollor',
                amount: '13042',
                code: 'USD',
                icon: Icons.attach_money_rounded,
                isInverted: true,
              ),
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavigator(),
      ),
    );
  }
}

// Custom Widget
class BottomNavigator extends StatelessWidget {
  const BottomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Phone'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_page),
          label: 'Contact',
        ),
      ],
    );
  }
}
