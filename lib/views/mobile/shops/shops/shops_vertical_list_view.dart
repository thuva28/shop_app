import 'package:flutter/material.dart';
import 'package:shop_app/models/best_shop.dart';
import 'package:shop_app/utils/ui_helper.dart';
import 'package:shop_app/widgets/mobile/shop_list_item_view.dart';
import 'package:shop_app/widgets/responsive.dart';

class ShopVerticalListView extends StatelessWidget {
  final String title;
  final List<BestTopShop> restaurants;
  final bool isAllRestaurantNearby;

  const ShopVerticalListView({
    Key? key,
    required this.title,
    required this.restaurants,
    this.isAllRestaurantNearby = false,
  })  : assert(title != ''),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);

    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style:
                Theme.of(context).textTheme.headline4!.copyWith(fontSize: 20.0),
          ),
          isAllRestaurantNearby
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    UIHelper.verticalSpaceExtraSmall(),
                    Text(
                      'Discover unique tastes near you',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 14.0),
                    ),
                  ],
                )
              : SizedBox(),
          UIHelper.verticalSpaceMedium(),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: restaurants.length,
            itemBuilder: (context, index) => InkWell(
              onTap: isTabletDesktop ? () {} : () {},
              child: ShopListItemView(
                restaurant: restaurants[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
