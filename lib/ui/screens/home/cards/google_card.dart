import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nubank_clone/core/locale_keys.g.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';
import 'package:nubank_clone/ui/shared/nu_outlined_button.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class GoogleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainCard(
      LocaleKeys.google_pay.tr(),
      NuIcons.ic_card_nu,
      [
        Text(
          LocaleKeys.google_pay_card_text.tr(),
          style: Theme.of(context).textTheme.bodyText2,
        ),
        SizedBox(height: 15),
        NuOutlinedButton(LocaleKeys.google_pay_card_register.tr()),
      ],
    );
  }
}
