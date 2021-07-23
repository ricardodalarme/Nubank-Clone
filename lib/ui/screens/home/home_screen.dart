import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/core/locale_keys.g.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/ui/screens/block/block_screen.dart';
import 'package:nubank_clone/ui/screens/charge/charge_screen.dart';
import 'package:nubank_clone/ui/screens/deposit/deposit_screen.dart';
import 'package:nubank_clone/ui/screens/home/cards/account_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/credit_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/easynvest_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/google_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/insurance_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/loan_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/rewards_card.dart';
import 'package:nubank_clone/ui/screens/home/components/circle_button.dart';
import 'package:nubank_clone/ui/screens/home/components/menu_button.dart';
import 'package:nubank_clone/ui/screens/loan/loan_screen.dart';
import 'package:nubank_clone/ui/screens/payment/payment_screen.dart';
import 'package:nubank_clone/ui/screens/pix/pix_screen.dart';
import 'package:nubank_clone/ui/screens/recharge/recharge_screen.dart';
import 'package:nubank_clone/ui/screens/refer/refer_screen.dart';
import 'package:nubank_clone/ui/screens/transfer/transfer_screen.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  final _cards = [
    CreditCard(),
    AccountCard(),
    LoanCard(),
    InsuranceCard(),
    RewardsCard(),
    EasynvestCard(),
    GoogleCard(),
  ];

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<AppState>(context);

    return Container(
      color: kPrimaryColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kPrimaryColor,
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 18, 16, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.hello.tr(args: [kUsername]),
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                          Row(
                            children: [
                              CircleButton(
                                state.viewValues
                                    ? NuIcons.ic_cc_balance_invisible
                                    : NuIcons.ic_cc_balance_visible,
                                () {
                                  state.switchView();
                                },
                              ),
                              CircleButton(NuIcons.nuds_ic_settings, () {}),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 24),
                      Expanded(
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(children: _cards),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    MenuButton(
                      LocaleKeys.pix.tr(),
                      NuIcons.rewards_ic_empty_state_other,
                      onTap: () =>
                          MyRouter.showBottomSheet(context, PixScreen()),
                    ),
                    MenuButton(
                      LocaleKeys.pay.tr(),
                      NuIcons.ic_savings_global_action_pay,
                      onTap: () =>
                          MyRouter.showBottomSheet(context, PaymentScreen()),
                    ),
                    MenuButton(
                      LocaleKeys.refer_friend.tr(),
                      NuIcons.ic_refer_friend,
                      onTap: () =>
                          MyRouter.showBottomSheet(context, ReferScreen()),
                    ),
                    MenuButton(
                      LocaleKeys.transfer.tr(),
                      NuIcons.ic_savings_global_action_transfer_out,
                      onTap: () =>
                          MyRouter.showBottomSheet(context, TransferScreen()),
                    ),
                    MenuButton(
                      LocaleKeys.deposit.tr(),
                      NuIcons.ic_savings_global_action_transfer_in,
                      onTap: () =>
                          MyRouter.showBottomSheet(context, DepositScreen()),
                    ),
                    MenuButton(
                      LocaleKeys.loan.tr(),
                      NuIcons.nuds_ic_personal_loan,
                      onTap: () => Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 400),
                              child: LoanScreen())),
                    ),
                    MenuButton(
                      LocaleKeys.virtual_card.tr(),
                      NuIcons.ic_virtual_card,
                    ),
                    MenuButton(
                      LocaleKeys.recharge_phone.tr(),
                      NuIcons.ic_phone,
                      onTap: () =>
                          MyRouter.showBottomSheet(context, RechargeScreen()),
                    ),
                    MenuButton(
                      LocaleKeys.adjust_limit.tr(),
                      NuIcons.cc_ic_limit_adjustment,
                    ),
                    MenuButton(
                      LocaleKeys.block_card.tr(),
                      NuIcons.ic_virtual_card_blocked,
                      onTap: () => MyRouter.showBottomSheet(
                        context,
                        BlockScreen(),
                        isScrollControlled: false,
                      ),
                    ),
                    MenuButton(
                      LocaleKeys.charge.tr(),
                      NuIcons.nuds_ic_request_money,
                      onTap: () =>
                          MyRouter.showBottomSheet(context, ChargeScreen()),
                    ),
                    MenuButton(
                      LocaleKeys.donation.tr(),
                      NuIcons.nuds_ic_personal_loan,
                    ),
                    MenuButton(
                      LocaleKeys.help_me.tr(),
                      NuIcons.help,
                    ),
                    SizedBox(width: 8),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
