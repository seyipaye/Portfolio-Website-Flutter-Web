import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';

import 'components/socal_card.dart';

import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // this height only for demo
      // height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For inquiry and information",
            color: Color(0xFF07E24A),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends GetResponsiveView {
  ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget builder() {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          screen.isDesktop || screen.isTablet
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocalCard(
                      color: Color(0xFFD9FFFC),
                      iconSrc: "assets/images/github.png",
                      name: 'Github',
                      onPress: () {
                        final Uri _url =
                            Uri.parse('https://github.com/seyipaye');
                        launchUrl(_url);
                      },
                    ),
                    SocalCard(
                      color: Color(0xFFE4FFC7),
                      iconSrc: "assets/images/linkden.png",
                      name: 'Linkedin',
                      onPress: () {
                        final Uri _url =
                            Uri.parse('https://www.linkedin.com/in/seyipaye');
                        launchUrl(_url);
                      },
                    ),
                    SocalCard(
                      color: Color(0xFFE8F0F9),
                      iconSrc: "assets/images/email.png",
                      name: 'Send an Email',
                      onPress: () {
                        final Uri emailLaunchUri = Uri(
                          scheme: 'mailto',
                          path: 'seyipaye@gmail.com',
                        );

                        launchUrl(emailLaunchUri);
                      },
                    ),
                  ],
                )
              : SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SocalCard(
                        color: Color(0xFFD9FFFC),
                        iconSrc: "assets/images/github.png",
                        name: 'Github',
                        onPress: () {
                          final Uri _url =
                              Uri.parse('https://github.com/seyipaye');
                          launchUrl(_url);
                        },
                      ),
                      SocalCard(
                        color: Color(0xFFE4FFC7),
                        iconSrc: "assets/images/linkden.png",
                        name: 'Linkedin',
                        onPress: () {
                          final Uri _url =
                              Uri.parse('https://www.linkedin.com/in/seyipaye');
                          launchUrl(_url);
                        },
                      ),
                      SocalCard(
                        color: Color(0xFFE8F0F9),
                        iconSrc: "assets/images/email.png",
                        name: 'Send an Email',
                        onPress: () {
                          final Uri emailLaunchUri = Uri(
                            scheme: 'mailto',
                            path: 'seyipaye@gmail.com',
                          );

                          launchUrl(emailLaunchUri);
                        },
                      ),
                    ],
                  ),
                ),
          SizedBox(height: kDefaultPadding),
          // ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Project Type",
                hintText: "Select Project Type",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Project Budget",
                hintText: "Select Project Budget",
              ),
            ),
          ),
          SizedBox(
            // height: 300,
            // TextField by default cover the height, i tryed to fix this problem but i cant
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Description",
                hintText: "Write some description",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Contact Me!",
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
