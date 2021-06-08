import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/ui/shared/label_button.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(NuIcons.back, color: kSecondaryTextColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(NuIcons.help, color: kSecondaryTextColor),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 25),
                Text(
                  'Saldo disponível',
                  style: TextStyle(
                    color: kSecondaryTextColor,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'R\$ $kBalance',
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: <Widget>[
                        Icon(
                          NuIcons.ic_nudge_girl_and_pig,
                          color: kSecondaryTextColor,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dinheiro guardado',
                              style: TextStyle(
                                color: kSecondaryTextColor,
                              ),
                            ),
                            Text(
                              'R\$ $kSaved',
                              style: TextStyle(
                                  color: kTextColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(NuIcons.arrow_right_list_item),
                      onPressed: null,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: <Widget>[
                        Icon(NuIcons.abc_ic_arrow_drop_right_black_24dp),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Rendimento total da conta',
                              style: TextStyle(
                                color: kSecondaryTextColor,
                              ),
                            ),
                            Text(
                              '+R\$ $kIcome este mês',
                              style: TextStyle(
                                color: kTextColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(NuIcons.arrow_right_list_item),
                      onPressed: null,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: <Widget>[
                      LabelButton('Depositar', NuIcons.abc_ic_ab_back_material),
                      LabelButton('Pagar', NuIcons.abc_ic_ab_back_material),
                      LabelButton(
                          'Transferir', NuIcons.abc_ic_ab_back_material),
                      LabelButton(
                          'Empréstimos', NuIcons.abc_ic_ab_back_material),
                      LabelButton('Cobrar', NuIcons.abc_ic_ab_back_material),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(height: 1, color: kSecondaryTextColor),
        ],
      ),
    );
  }
}
