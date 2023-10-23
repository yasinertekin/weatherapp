import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weatherapp/feature/CurrentCityScreen/current_city_screen.dart';
import 'package:weatherapp/feature/MyCitiesScreen/my_cities_screen.dart';
import 'package:weatherapp/feature/SettingsScreen/settings_screen.dart';
import 'package:weatherapp/product/enums/custom_colors_enums.dart';
import 'package:weatherapp/product/enums/tab_bar_enums.dart';
import 'package:weatherapp/product/extensions/color_extendisons.dart';

// ignore: must_be_immutable
class TabBarScreen extends StatefulWidget {
  final int currentIndex;

  const TabBarScreen({
    super.key,
    required this.currentIndex,
  });

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: widget.currentIndex,
      length: MyTabviews.values.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: MyTabviews.values.length,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          color: CustomColors.tangaroa.color,
          child: myTabView(),
        ),
        body: _TabBarView(
          tabController: _tabController,
        ),
      ),
    );
  }

  myTabView() {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Colors.transparent,
      indicatorWeight: 4,
      tabAlignment: TabAlignment.fill,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white.withOpacity(0.5),
      controller: _tabController,
      tabs: myTabViewsValuesMap().toList(),
    );
  }

  Iterable<Tab> myTabViewsValuesMap() {
    const double iconSize = 24;

    return MyTabviews.values.map(
      (e) {
        if (e.name == 'currentCity') {
          return const Tab(
              icon: Icon(
            CupertinoIcons.cloud_sun_fill,
            size: iconSize,
          ));
        } else if (e.name == 'myCities') {
          return const Tab(
            icon: Icon(
              CupertinoIcons.square_favorites,
              size: iconSize,
            ),
          );
        } else if (e.name == 'mapOfCities') {
          return const Tab(
            icon: Icon(
              CupertinoIcons.map_fill,
              size: iconSize,
            ),
          );
        } else {
          return const Tab(
            icon: Icon(
              CupertinoIcons.settings,
              size: iconSize,
            ),
          );
        }
      },
    );
  }
}

class _TabBarView extends StatelessWidget {
  const _TabBarView({
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: [
        Observer(
          builder: (_) {
            return const CurrentCityScreen();
          },
        ),
        const MyCitiesScreen(),
        Container(
          color: Colors.green,
        ),
        const SettingsScreen(),
      ],
    );
  }
}
