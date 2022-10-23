import 'package:flutter/material.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/pages/block/widgets/expanded_button.dart';
import 'package:nubank_clone/theme/colors.dart';
import 'package:nubank_clone/theme/icons.dart';

class BlockScreen extends StatelessWidget {
  const BlockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 40),
          const Icon(
            NuIcons.ic_virtual_card_blocked,
            color: kSecondaryTextColor,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Você quer ',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(height: 1.8),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'bloquear temporariamente ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'o seu cartão?'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Container(height: 1, color: kLineColor),
          Row(
            children: [
              ExpandedButton(
                'Cancelar',
                onTap: () => MyRouter.popPage(context),
                color: kSecondaryTextColor,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 1),
                width: 1,
                height: 62,
                color: kLineColor,
              ),
              const ExpandedButton(
                'Bloquear',
                color: kPrimaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
