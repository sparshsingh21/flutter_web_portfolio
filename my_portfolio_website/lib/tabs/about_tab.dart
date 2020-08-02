import 'package:sparshsingh/config/assets.dart';
import 'package:sparshsingh/config/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import '../widgets/theme_inherited_widget.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 120,
                backgroundImage: Image.asset(Assets.avatar).image,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sparsh Singh',
                textScaleFactor: 4,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'I am an Engineering Student with a great interest in android and iOS development, web development and exploring various aspects of Programming! ',
                style: Theme.of(context).textTheme.caption,
                textScaleFactor: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.github)),
                    label: Text(''),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_GITHUB, 'sparshdroid'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.twitter)),
                    label: Text(''),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_TWITTER, 'sparshdroid'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(
                            ThemeSwitcher.of(context).isDarkModeOn
                                ? Assets.gmail
                                : Assets.gmailite)),
                    label: Text(''),
                    onPressed: () => html.window
                        .open(Constants.GMAIL_SEND, 'sparshdroid'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.instagram)),
                    label: Text(''),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_INSTAGRAM, 'sparshdroid'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.facebook)),
                    label: Text(''),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_FACEBOOK, 'sparshdroid'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.linkedin)),
                    label: Text(''),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_LINKEDIN, 'sparshdroid'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
