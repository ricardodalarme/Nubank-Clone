import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nubank_clone/core/locale_keys.g.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';
import 'package:nubank_clone/ui/shared/nu_outlined_button.dart';

class RewardsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainCard(
      LocaleKeys.rewards.tr(),
      Icons.card_giftcard,
      [
        Text(
          LocaleKeys.rewards_card_text.tr(),
          style: Theme.of(context).textTheme.bodyText2,
        ),
        SizedBox(height: 15),
        NuOutlinedButton(LocaleKeys.meet.tr()),
      ],
      highlight: true,
    );
  }
}
