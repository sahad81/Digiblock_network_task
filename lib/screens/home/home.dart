import 'package:digiblock_network_task/screens/base.dart/tabs.dart';
import 'package:digiblock_network_task/screens/home/flights/flights.dart';
import 'package:digiblock_network_task/screens/home/stays/stays.dart';
import 'package:digiblock_network_task/util/dimensions.dart';
import 'package:digiblock_network_task/util/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, initialIndex: 0, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: PreferredSize(
        
          preferredSize: const Size.fromHeight(120.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.blue,
            title: Text('Booking.com',
                style: robotoBold.copyWith(
                    fontSize: Dimensions.fontSizeExtraLarge,
                    color: Theme.of(context).cardColor)),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                     Icon(
                      Icons.notifications_none,color: Theme.of(context).cardColor,
                      size: 30,
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 15,
                          decoration: const BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                          child: const Center(
                            child: Text('1'),
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.person,color: Theme.of(context).cardColor,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(size: 30, CupertinoIcons.line_horizontal_3,color: Theme.of(context).cardColor,)),
              ),
            ],
            bottom: TabBar(
                padding: EdgeInsets.symmetric(vertical: 10),
                isScrollable: true,
                dividerColor: Colors.blue,
                indicator: BoxDecoration(
                    border: Border.all(color: Theme.of(context).cardColor),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.blue.shade300),
                controller: _tabController,
                tabs: [
                  Tab(child: Tabs(icon: Icons.bed_outlined, text: 'Stays')),
                  Tab(
                      child: Tabs(
                          icon: Icons.flight_takeoff_outlined,
                          text: 'Flights')),
                  Tab(
                      child: Tabs(
                          icon: Icons.travel_explore_rounded,
                          text: 'Flight + Hotel')),
                  Tab(child: Tabs(icon: Icons.car_rental, text: 'Car Rentels')),
                  Tab(
                      child:
                          Tabs(icon: Icons.attractions, text: 'Attractions')),
                  Tab(
                      child:
                          Tabs(icon: Icons.taxi_alert, text: 'Airport taxis'))
                ]),
          )),
      body: TabBarView(controller: _tabController, children: [
        StaysScreen(),
        FlightScreen(),
       Container(),Container(),Container(),Container()
      ]),
    );
  }
}
