import 'package:flutter/material.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/ui/shared/nu_outlined_button.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class ReferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.93,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () => MyRouter.popPage(context),
              icon: Icon(NuIcons.close, color: kSecondaryTextColor)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Resgate seus amigos da fila do banco',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 10),
                Text(
                  'Para cada indicação aceita, um amigo salvo da burocracia',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(height: 20),
                NuOutlinedButton('Indicar amigos'),
                Image.asset('assets/images/refer_friend.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
