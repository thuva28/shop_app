import 'package:flutter/material.dart';
import 'package:shop_app/models/best_shop.dart';
import 'package:shop_app/utils/ui_helper.dart';

class SearchShopListItemView extends StatelessWidget {
  const SearchShopListItemView({
    Key? key,
    required this.food,
  }) : super(key: key);

  final BestTopShop food;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                )
              ],
            ),
            child: Image.asset(
              food.image,
              height: 80.0,
              width: 80.0,
              fit: BoxFit.fill,
            ),
          ),
          UIHelper.horizontalSpaceSmall(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  food.name,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 15.0),
                ),
                Text(food.desc,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.grey[600], fontSize: 13.5)),
                UIHelper.verticalSpaceSmall(),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      size: 14.0,
                      color: Colors.grey[600],
                    ),
                    Text(food.ratingTimePrice)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
