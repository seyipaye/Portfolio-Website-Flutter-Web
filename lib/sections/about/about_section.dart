import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends GetResponsiveView {
  @override
  Widget builder() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          screen.isDesktop
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AboutTextWithSign(),
                    Expanded(
                      child: AboutSectionText(
                        text:
                            "I am a Backend developer with experience developing optimised server-side applications using Python and Javascript. I am passionate about creating solutions that power dynamic applications and ensure seamless interactions between the front end and the server.",
                      ),
                    ),
                    Expanded(flex: 0, child: ExperienceCard(numOfExp: "02")),
                    Expanded(
                      child: AboutSectionText(
                        text:
                            "Throughout my career, I have worked on a diverse range of projects, and I am always eager to expand my knowledge and tackle complex problems. I believe in the power of continuous learning and strive to improve my skills every day.",
                      ),
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: AboutTextWithSign(),
                        )),
                        Expanded(
                          child: AboutSectionText(
                            text:
                                "I am a Backend developer with experience developing optimised server-side applications using Python and Javascript. I am passionate about creating solutions that power dynamic applications and ensure seamless interactions between the front end and the server.",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        Expanded(child: ExperienceCard(numOfExp: "02")),
                        Expanded(
                          child: AboutSectionText(
                            text:
                                "Throughout my career, I have worked on a diverse range of projects, and I am always eager to expand my knowledge and tackle complex problems. I believe in the power of continuous learning and strive to improve my skills every day.",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
          SizedBox(height: kDefaultPadding * 3),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // MyOutlineButton(
                //   imageSrc: "assets/images/hand.png",
                //   text: "Hire Me!",
                //   press: () {},
                // ),
                // DefaultButton(
                //   imageSrc: "assets/images/download.png",
                //   text: "Download Resume",
                //   press: () {},
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
