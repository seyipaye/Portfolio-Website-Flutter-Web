import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/Service.dart';

import 'components/service_card.dart';

class ServiceSection extends GetResponsiveView {
  @override
  Widget builder() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "My Skills",
            subTitle: "Here's what am I capable of",
          ),
          screen.isDesktop
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                      services.length, (index) => ServiceCard(index: index)),
                )
              : screen.isTablet
                  ? Wrap(
                      spacing: 20, // gap between adjacent chips
                      runSpacing: 4.0, // gap between lines
                      children: List.generate(services.length,
                          (index) => ServiceCard(index: index)),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                          services.length,
                          (index) => SizedBox(
                              height: Get.width * 0.7,
                              width: Get.width * 0.5,
                              child: ServiceCard(index: index))),
                    )
        ],
      ),
    );
  }
}
