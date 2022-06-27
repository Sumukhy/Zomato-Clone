import 'package:flutter/material.dart';

import '../services/country_code.dart';

class PhoneLocationPicker extends StatelessWidget {
  const PhoneLocationPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //search bar
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey[600]),
                  SizedBox(width: 10),
                  Text(
                    'Search by country name...',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Text("Select your country",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: countryCodes.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context, countryCodes[index]);
                      },
                      child: Row(
                        children: [
                          //logo
                          Container(
                            width: 30,
                            height: 30,
                            child: Image.network(countryCodes[index].logoUrl),
                          ),
                          SizedBox(width: 10),
                          //name
                          Text(countryCodes[index].name,
                              style: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500)),
                          Spacer(),
                          //phone code
                          Text(countryCodes[index].phoneCode,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                );
              }),
            ),
          )
        ]),
      ),
    );
  }
}
