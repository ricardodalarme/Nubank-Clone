import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/shared/filled_chip.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class DiscoverCard extends StatelessWidget {
  final String title;
  final String content;
  final String buttonText;
  final Function() onTap;
  final bool isNew;

  const DiscoverCard({
    Key? key,
    required this.title,
    required this.content,
    required this.buttonText,
    required this.onTap,
    this.isNew = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: kLabelButtonColor),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(title,
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: kTextColor, fontWeight: FontWeight.w500)),
                    SizedBox(width: 5),
                    Visibility(
                      visible: isNew,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Text(
                          'Novo',
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  child: Text(
                    content,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                SizedBox(height: 10),
                FilledButton(buttonText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
