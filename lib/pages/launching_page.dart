import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zomato_clone/constants.dart';

class LaunchingPage extends StatelessWidget {
  const LaunchingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TopLocationWidget(),
            LaunchingPageSearchBar(),
          ]),
        ),
      ),
    );
  }
}

class TopLocationWidget extends StatelessWidget {
  const TopLocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          size: 30,
          color: kSecondaryColor,
        ),
        SizedBox(width: 3),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "HSR Layout",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(width: 1),
                  Icon(Icons.keyboard_arrow_down_sharp),
                ],
              ),
              Text(
                "Bangalore, India",
                // "KG Halli, Shanthala Nagar, Ashok Nagar, Kaledonia, Mumbai, 500122",
                maxLines: 1,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500),
                overflow: TextOverflow.clip,
              )
            ],
          ),
        ),
        SizedBox(
          width: 30,
        ),
        CircleAvatar(
            backgroundColor: Colors.green.shade900,
            child: Text(
              "S",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ))
      ],
    );
  }
}

class LaunchingPageSearchBar extends StatelessWidget {
  const LaunchingPageSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
