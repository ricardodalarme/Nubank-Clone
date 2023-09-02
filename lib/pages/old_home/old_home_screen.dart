import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/app_colors.dart';
import 'package:nubank_clone/constants/mocked_values.dart';
import 'package:nubank_clone/constants/nu_icons.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/pages/block/block_screen.dart';
import 'package:nubank_clone/pages/charge/charge_screen.dart';
import 'package:nubank_clone/pages/deposit/deposit_screen.dart';
import 'package:nubank_clone/pages/loan/loan_screen.dart';
import 'package:nubank_clone/pages/old_home/cards/account_card.dart';
import 'package:nubank_clone/pages/old_home/cards/credit_card.dart';
import 'package:nubank_clone/pages/old_home/cards/easynvest_card.dart';
import 'package:nubank_clone/pages/old_home/cards/google_card.dart';
import 'package:nubank_clone/pages/old_home/cards/insurance_card.dart';
import 'package:nubank_clone/pages/old_home/cards/loan_card.dart';
import 'package:nubank_clone/pages/old_home/cards/rewards_card.dart';
import 'package:nubank_clone/pages/old_home/widgets/menu_button.dart';
import 'package:nubank_clone/pages/payment/payment_screen.dart';
import 'package:nubank_clone/pages/pix/pix_screen.dart';
import 'package:nubank_clone/pages/recharge/recharge_screen.dart';
import 'package:nubank_clone/pages/refer/refer_screen.dart';
import 'package:nubank_clone/pages/transfer/transfer_screen.dart';
import 'package:nubank_clone/utils/extensions/router_context_extension.dart';
import 'package:nubank_clone/widgets/circle_button.dart';
import 'package:provider/provider.dart';

class OldHomeScreen extends StatelessWidget {
  OldHomeScreen({super.key});

  final _cards = [
    const CreditCard(),
    const AccountCard(),
    const LoanCard(),
    const InsuranceCard(),
    const RewardsCard(),
    const EasynvestCard(),
    const GoogleCard(),
  ];

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<AppState>(context);

    return ColoredBox(
      color: AppColors.primary,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.primary,
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 18, 16, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Olá, ${MockedValues.username}',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(color: Colors.white),
                          ),
                          Row(
                            children: [
                              CircleButton(
                                state.viewValues
                                    ? NuIcons.ic_cc_balance_invisible
                                    : NuIcons.ic_cc_balance_visible,
                                state.switchView,
                              ),
                              CircleButton(NuIcons.nuds_ic_settings, () {}),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Expanded(
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
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
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MenuButton(
                        'Pix',
                        NuIcons.rewards_ic_empty_state_other,
                        onTap: () => context.showBottomSheet(
                          const PixScreen(),
                        ),
                      ),
                      MenuButton(
                        'Pagar',
                        NuIcons.ic_savings_global_action_pay,
                        onTap: () => context.showBottomSheet(
                          const PaymentScreen(),
                        ),
                      ),
                      MenuButton(
                        'Indicar amigos',
                        NuIcons.ic_refer_friend,
                        onTap: () => context.showBottomSheet(
                          const ReferScreen(),
                        ),
                      ),
                      MenuButton(
                        'Transferir',
                        NuIcons.ic_savings_global_action_transfer_out,
                        onTap: () => context.showBottomSheet(
                          TransferScreen(),
                        ),
                      ),
                      MenuButton(
                        'Depositar',
                        NuIcons.ic_savings_global_action_transfer_in,
                        onTap: () => context.showBottomSheet(
                          const DepositScreen(),
                        ),
                      ),
                      MenuButton(
                        'Empréstimos',
                        NuIcons.nuds_ic_personal_loan,
                        onTap: () => context.push(
                          const LoanScreen(),
                        ),
                      ),
                      const MenuButton(
                        'Cartão virtual',
                        NuIcons.ic_virtual_card,
                      ),
                      MenuButton(
                        'Recarga de celular',
                        NuIcons.ic_phone,
                        onTap: () => context.showBottomSheet(
                          RechargeScreen(),
                        ),
                      ),
                      const MenuButton(
                        'Ajustar limite',
                        NuIcons.cc_ic_limit_adjustment,
                      ),
                      MenuButton(
                        'Bloquear cartão',
                        NuIcons.ic_virtual_card_blocked,
                        onTap: () => context.showBottomSheet(
                          const BlockScreen(),
                          isScrollControlled: false,
                        ),
                      ),
                      MenuButton(
                        'Cobrar',
                        NuIcons.nuds_ic_request_money,
                        onTap: () => context.showBottomSheet(
                          ChargeScreen(),
                        ),
                      ),
                      const MenuButton('Doação', NuIcons.nuds_ic_personal_loan),
                      const MenuButton('Me ajuda', NuIcons.help),
                      const SizedBox(width: 8),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
