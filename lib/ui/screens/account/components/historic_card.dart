import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class HistoricCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Function()? onTap;

  const HistoricCard(this.title, this.subTitle, this.icon, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kLabelButtonColor,
                  ),
                  child: Icon(icon),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Ontem',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        subTitle.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2!
                            .copyWith(height: 1.6),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'R\$ 30,00',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Pix',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 1,
            color: kUnviewColor,
          )
        ],
      ),
    );
  }
}

class Bowidth {}
