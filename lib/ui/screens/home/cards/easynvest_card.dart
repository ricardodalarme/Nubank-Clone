import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nubank_clone/core/locale_keys.g.dart';
import 'package:nubank_clone/ui/screens/easyinvest/easyinvest_screen.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';
import 'package:nubank_clone/ui/shared/nu_outlined_button.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:page_transition/page_transition.dart';

class EasynvestCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainCard(
      LocaleKeys.easynvest_investment.tr(),
      NuIcons.ic_yield,
      [
        Text(
          LocaleKeys.easynvest_investment_card_text.tr(),
          style: Theme.of(context).textTheme.bodyText2,
        ),
        SizedBox(height: 15),
        NuOutlinedButton(LocaleKeys.meet.tr()),
      ],
      onTap: () => Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.rightToLeft,
              duration: Duration(milliseconds: 400),
              child: EasyInvestScreen())),
    );
  }
}
