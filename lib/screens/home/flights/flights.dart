import 'package:digiblock_network_task/controlls/flights_controller.dart';
import 'package:digiblock_network_task/controlls/stays_controller.dart';
import 'package:digiblock_network_task/util/dimensions.dart';
import 'package:digiblock_network_task/util/images.dart';
import 'package:digiblock_network_task/util/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlightScreen extends StatefulWidget {
  const FlightScreen({super.key});

  @override
  State<FlightScreen> createState() => _FlightScreenState();
}

List<String> place = [
  'America',
  'Africa',
  'India',
  'Asia',
  'Manjeri',
  "Kerala"
];

class _FlightScreenState extends State<FlightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Scrollbar(child: GetBuilder<FlightController>(builder: (c) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                    child: Column(
                      children: [
                        Text(
                          'Compare and book flights with ease',
                          style: robotoBold.copyWith(
                            fontSize: Dimensions.fontSizeOverLargeLarg,
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                        ),
                        Text(
                          'Discover your next dream destination',
                          style: robotoRegular.copyWith(
                              fontSize: Dimensions.fontSizeLarge),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Radio<int>(
                              value: 1,
                              groupValue: c.selectedCat,
                              onChanged: (value) {
                                c.changetripCat(value);
                              },
                            ),
                            Text('Round trip'),
                            Radio<int>(
                              value: 2,
                              groupValue: c.selectedCat,
                              onChanged: (value) {
                                c.changetripCat(value);
                              },
                            ),
                            Text('One way'),
                            Radio<int>(
                              value: 3,
                              groupValue: c.selectedCat,
                              onChanged: (value) {
                                c.changetripCat(value);
                              },
                            ),
                            Text('Multy-city'),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 363,
                          decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              border: Border.all(
                                  width: 5, color: Colors.yellow.shade600)),
                          child: Column(
                            children: [
                              Container(
                                height: 45,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.flight_takeoff),
                                    ),
                                    SizedBox(
                                      width:
                                          Dimensions.PADDING_SIZE_EXTRA_SMALL,
                                    ),
                                    Text(
                                      'COK',
                                      style: robotoBold,
                                    ),
                                    Text(' Cochin international Airport')
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal:
                                        Dimensions.PADDING_SIZE_EXTRA_SMALL),
                                child: Row(children: [
                                  Container(
                                    width: context.width * 0.8,
                                    height: 1,
                                    color: Theme.of(context).disabledColor,
                                  ),
                                  Expanded(
                                    child: Icon(
                                      CupertinoIcons.arrow_up_arrow_down,
                                      color: Colors.blue.shade900,
                                    ),
                                  )
                                ]),
                              ),
                              Container(
                                height: 40,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.flight_land_outlined),
                                    ),
                                    Center(
                                      child: Text(
                                        'Where to',
                                        style: robotoRegular.copyWith(
                                            color: Theme.of(context)
                                                .disabledColor),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.yellow.shade600,
                                thickness: 5,
                              ),
                              Container(
                                height: 45,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Icon(Icons.calendar_month),
                                    ),
                                    Text('set 23 sept - sat 30 sept')
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.yellow.shade600,
                                thickness: 5,
                              ),
                              Container(
                                  height: 45,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Row(children: [
                                      Icon(Icons.person),
                                      SizedBox(
                                        width: Dimensions.PADDING_SIZE_SMALL,
                                      ),
                                      Text('1 Traveler ,Economy'),
                                    ]),
                                  )),
                              Divider(
                                color: Colors.yellow.shade600,
                                thickness: 5,
                              ),
                              Container(
                                height: 40,
                                child: Row(
                                  children: [
                                    Switch(
                                      value: c.directFlightOnly,
                                      onChanged: (value) {
                                        c.directflightonlychange(value);
                                      },
                                    ),
                                    Text('Direct flight only')
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.yellow.shade600,
                                thickness: 5,
                              ),
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                  child: Container(
                                    height: 45,
                                    color: Colors.blue,
                                    child: Center(
                                      child: Text(
                                        'Search',
                                        style: robotoMedium.copyWith(
                                            color: Theme.of(context).cardColor,
                                            fontSize: Dimensions.fontSizeLarge),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                        ),
                        Container(
                          color: Theme.of(context).cardColor,
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(
                                Dimensions.PADDING_SIZE_SMALL),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context).disabledColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Colors.red.shade50),
                                        child: Center(
                                            child: Icon(CupertinoIcons
                                                .exclamationmark_circle)),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text:
                                                      'Coronavirus (Covid 19) maay effect the travel\n place. ',
                                                  style: robotoRegular.copyWith(
                                                      color: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium!
                                                          .color)),
                                              TextSpan(
                                                text: 'learn more',
                                                style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal:
                                        Dimensions.PADDING_SIZE_EXTRA_LARGE),
                                child: Container(
                                  width: 50,
                                  height: 60,
                                  child: Image.asset(Images.lence),
                                ),
                              ),
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Search a huge selection ',
                                      style: robotoBold.copyWith(
                                          fontSize:
                                              Dimensions.fontSizeExtraLarge),
                                    ),
                                    Text(
                                      'easly compare flights ,airline and prices \nall in one play',
                                      style: robotoRegular,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal:
                                        Dimensions.PADDING_SIZE_EXTRA_LARGE),
                                child: Container(
                                  width: 50,
                                  height: 60,
                                  child: Image.asset(Images.lence),
                                ),
                              ),
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Search a huge selection ',
                                      style: robotoBold.copyWith(
                                          fontSize:
                                              Dimensions.fontSizeExtraLarge),
                                    ),
                                    Text(
                                      'easly compare flights ,airline and prices \nall in one play',
                                      style: robotoRegular,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal:
                                        Dimensions.PADDING_SIZE_EXTRA_LARGE),
                                child: Container(
                                  width: 50,
                                  height: 60,
                                  child: Image.asset(Images.lence),
                                ),
                              ),
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Search a huge selection ',
                                      style: robotoBold.copyWith(
                                          fontSize:
                                              Dimensions.fontSizeExtraLarge),
                                    ),
                                    Text(
                                      'easly compare flights ,airline and prices \nall in one play',
                                      style: robotoRegular,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                    child: Container(
                        color: Theme.of(context).cardColor,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Dimensions.PADDING_SIZE_LARGE,
                            ),
                            Text(
                              '*flexible plane ticket are available for a additional cost on selected airfile ',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Fly worldwide with booking.com',
                              style: robotoBold.copyWith(
                                  fontSize: Dimensions.fontSizeOverLarge),
                            ),
                            SizedBox(
                              height: Dimensions.PADDING_SIZE_LARGE,
                            ),
                            Text(
                              'flight from wherever you are to wherever you want to go',
                              style: robotoRegular.copyWith(
                                  fontSize: Dimensions.fontSizeLarge),
                            ),
                            SizedBox(
                              height: Dimensions.PADDING_SIZE_SMALL,
                            ),
                            SizedBox(
                              height: 40,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => Column(
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                c.selectplace(index);
                                              },
                                              child: Text(
                                                place[index],
                                                style: robotoRegular.copyWith(
                                                    fontSize: Dimensions
                                                        .PADDING_SIZE_DEFAULT,
                                                    color:
                                                        c.selectedplace == index
                                                            ? Colors.blue
                                                            : Theme.of(context)
                                                                .textTheme
                                                                .bodyMedium!
                                                                .color),
                                              )),
                                          c.selectedplace == index
                                              ? Container(
                                                  height: 1,
                                                  width: place[index]
                                                          .length
                                                          .toDouble() *
                                                      10,
                                                  color: Colors.blue,
                                                )
                                              : SizedBox(),
                                        ],
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        width: Dimensions.PADDING_SIZE_LARGE,
                                      ),
                                  itemCount: place.length),
                            ),
                            SizedBox(
                                height: 300.0, // Set the height of each item
                                child: GridView.count(
                                  scrollDirection: Axis.horizontal,
                                  crossAxisCount: 3,
                                  childAspectRatio: .34,
                                  children: List.generate(
                                    10,
                                    (index) => Container(
                                      width: 150,
                                      height: 70,
                                      color: Theme.of(context).cardColor,
                                      margin: EdgeInsets.all(10),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 50,
                                            child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(Dimensions
                                                        .RADIUS_SMALL)),
                                                child: Image.asset(
                                                  Images.thaj,
                                                  fit: BoxFit.fill,
                                                )),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Cochin to Toronto',
                                                    style: robotoBold,
                                                  ),
                                                  Text(
                                                      'shortest flight time 17h 27 min'),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      )),
                                    ),
                                  ),
                                )),
                                SizedBox(height: Dimensions.PADDING_SIZE_LARGE,),
                            Text(
                              'Frequantly asked qastions',
                              style: robotoBold.copyWith(
                                  fontSize: Dimensions.fontSizeOverLarge),
                            ),
                            SizedBox(
                                height: 350.0, // Set the height of each item
                                child: GridView.count(
                                  scrollDirection: Axis.horizontal,
                                  crossAxisCount: 2,
                                  childAspectRatio: .6,
                                  children: List.generate(
                                    10,
                                    (index) => Container(
                                      width: 150,
                                      height: 90,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).cardColor,
                                          border: Border.all(
                                              color: Theme.of(context)
                                                  .disabledColor),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  Dimensions.RADIUS_LARGE))),
                                      margin: EdgeInsets.all(10),
                                      child: Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "how to find cheapest flight on booking.com?",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                              style: robotoBold.copyWith(
                                                  fontSize:
                                                      Dimensions.fontSizeLarge),
                                            ),
                                              Text(
                                              "yes ,you can book one way round trip and multy city flight on our site",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 4,
                                              style: robotoRegular.copyWith(
                                                  fontSize:
                                                      Dimensions.fontSizeDefault),
                                            )
                                          ],
                                        ),
                                      )),
                                    ),
                                  ),
                                )),
                          ],
                        )))
              ]);
        })),
      ),
    );
  }
}
