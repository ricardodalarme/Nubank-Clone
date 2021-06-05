import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/components/nu_outlined_button.dart';
import 'package:nubank_clone/ui/screens/home/components/nu_card.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class EasynvestCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NuCard(
      'Investimento Easynvest',
      NuIcons.ic_yield,
      [
        Text(
            'Conheça a Easynvest e invista com taxa zero de corretagem e sem burocracias!',
          style: TextStyle(
            color: kTextColor,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 15),
        NuOutlinedButton('Conhecer'),
      ],
    );
  }
}
