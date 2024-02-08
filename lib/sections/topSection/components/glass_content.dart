import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../constants.dart';

class GlassContent extends GetResponsiveView {
  GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget builder() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.7),
          width: double.infinity,
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: screen.isDesktop
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              SizedBox(
                height: screen.isDesktop ? 20 : Get.height * 0.1,
              ),
              Text(
                "Hello There!, my name is",
                style: Theme.of(Get.context!)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: Colors.white),
              ),
              Text(
                "Oluwaseyifunmi \nIpaye",
                style: TextStyle(
                  fontSize: !screen.isDesktop ? 40 : 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              screen.isDesktop || screen.isTablet
                  ? Text(
                      "I'm a Backend Developer",
                      style: Theme.of(Get.context!)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: Colors.white),
                    )
                  : Text(
                      "I'm a Backend Developer",
                      style: Theme.of(Get.context!)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
