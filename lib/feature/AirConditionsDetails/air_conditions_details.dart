import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:weatherapp/product/constants/decoration_constants.dart';
import 'package:weatherapp/product/constants/index.dart';
import 'package:weatherapp/product/enums/air_conditions_details.dart';
import 'package:weatherapp/product/enums/custom_colors_enums.dart';
import 'package:weatherapp/product/extensions/air_conditions_details_extensions.dart';
import 'package:weatherapp/product/extensions/color_extendisons.dart';
import 'package:weatherapp/product/widgets/current_city_header.dart';

class AirConditionsDetailsScreen extends StatelessWidget {
  const AirConditionsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: CustomColors.trippleBerry.color,
        title: const Text(
          StringConstants.airConditions,
        ),
      ),
      body: const AirConditionsBody(),
    );
  }
}

class AirConditionsBody extends StatelessWidget {
  const AirConditionsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Expanded(
          child: ListView(
            children: const [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: CurrentCityScreenHeader(),
                  ),
                  _AirConditionsDetails()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AirConditionsDetails extends StatelessWidget {
  const _AirConditionsDetails();

  @override
  Widget build(BuildContext context) {
    const double crossAxisSpacing = 0;
    const double mainAxisSpacing = 20;
    const double aspectRatio = 2;
    const int crossAxisCount = 2;
    const double mainAxisExtent = 100;
    final double height = context.general.mediaQuery.size.height * 0.6;
    return SizedBox(
      height: height,
      child: GridView.builder(
        padding: context.padding.medium,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: crossAxisSpacing,
          mainAxisSpacing: mainAxisSpacing,
          crossAxisCount: crossAxisCount,
          mainAxisExtent: mainAxisExtent,
          childAspectRatio: aspectRatio,
        ),
        itemBuilder: (context, index) {
          // Burada her bir hava koşulu için bir öğe oluşturun
          AirConditionsDetails condition = AirConditionsDetails.values[index];
          String? conditionData = condition.airConditions;

          return _AirConditionsDetailsCard(
            condition: condition,
            conditionData: conditionData,
          );
        },
        itemCount: AirConditionsDetails.values.length, // Toplam öğe sayısı
      ),
    );
  }
}

class _AirConditionsDetailsCard extends StatelessWidget {
  const _AirConditionsDetailsCard({
    required this.condition,
    required this.conditionData,
  });

  final AirConditionsDetails condition;
  final String? conditionData;

  @override
  Widget build(BuildContext context) {
    final double width = context.general.mediaQuery.size.width * 0.35;
    const double elevation = 10;
    return Center(
      child: SizedBox(
        width: width,
        child: Card(
          elevation: elevation,
          color: CustomColors.tangaroa.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              DecorationConstants.defaultCardBorderRadius,
            ),
          ),
          child: _ConditionCardBody(
            condition: condition,
            conditionData: conditionData,
          ),
        ),
      ),
    );
  }
}

class _ConditionCardBody extends StatelessWidget {
  const _ConditionCardBody({
    required this.condition,
    required this.conditionData,
  });

  final AirConditionsDetails condition;
  final String? conditionData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyLeftNormal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ContidionName(condition: condition),
          _ConditionValue(conditionData: conditionData),
        ],
      ),
    );
  }
}

class _ConditionValue extends StatelessWidget {
  const _ConditionValue({
    required this.conditionData,
  });

  final String? conditionData;

  @override
  Widget build(BuildContext context) {
    return Text(
      conditionData ?? StringConstants.noData,
      textAlign: TextAlign.start,
      style: context.general.textTheme.headlineSmall?.copyWith(
        color: CustomColors.terminatorChrome.color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _ContidionName extends StatelessWidget {
  const _ContidionName({
    required this.condition,
  });

  final AirConditionsDetails condition;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyBottomLow,
      child: Text(
        condition.name.toUpperCase(), // Büyük harfleri küçük harflere dönüştürün

        textAlign: TextAlign.start,
        style: context.general.textTheme.labelMedium?.copyWith(
          color: CustomColors.timeWarp.color,
        ),
      ),
    );
  }
}
