import 'package:digiblock_network_task/controlls/home_controller.dart';
import 'package:digiblock_network_task/util/dimensions.dart';
import 'package:digiblock_network_task/util/images.dart';
import 'package:digiblock_network_task/util/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class StaysScreen extends StatefulWidget {
  const StaysScreen({super.key});

  @override
  State<StaysScreen> createState() => _StaysScreenState();
}

class _StaysScreenState extends State<StaysScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Scrollbar(
            child: Padding(
          padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Where to Next , sahad?',
                style: robotoBold.copyWith(
                    fontSize: Dimensions.fontSizeOverLarge,
                    color: Theme.of(context).textTheme.bodyLarge!.color),
              ),
              SizedBox(
                height: Dimensions.PADDING_SIZE_SMALL,
              ),
              Text(
                'Search Low price on hotel , homes and mush more ndkfn edinjisk',
                overflow: TextOverflow.clip,
                maxLines: 1,
                style: robotoRegular,
              ),
              SizedBox(
                height: Dimensions.PADDING_SIZE_SMALL,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 5, color: Colors.yellow.shade600)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.search),
                              hintText: 'Around current location',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          style: TextStyle(
                              fontSize: 18.0), // Optional: Set the font size
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.yellow.shade600,
                      thickness: 5,
                    ),
                    Container(
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text('check-in date'),
                                Text('mon 21 Aug 2023',style: robotoBold,)
                              ],
                            ),
                          ),
                          VerticalDivider(
                              thickness: 5,
                              color: Colors.yellow.shade600,
                              endIndent: 0),
                          Container(

                            child: Column(
                              children: [
                                  Text('check-out date'),
                                Text('tue 22 Aug 2023',style: robotoBold,)
                              ],
                            ),
                          )
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Adlts',style: robotoRegular,),
                                Text('2',style: robotoBold,)
                              ],
                            ),),
                            VerticalDivider(),
                            Container(child: Column(
                              children: [
                                Text('children',style: robotoRegular,),
                                Text('2',style: robotoBold,)
                              ],
                            ),),
                            VerticalDivider(),
                            Container(child: Column(
                              children: [
                                Text('room',style: robotoRegular,),
                                Text('1',style: robotoBold,)
                              ],
                            ),)
                          ]),
                    ),
                    Divider(
                      color: Colors.yellow.shade600,
                      thickness: 5,
                    ),
                    GetBuilder<HomeController>(
                      builder: (c) {
                        return Container(
                          height: 35,
                        
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(value: c.checkbox,
                             onChanged:(value) {
                               c.checkboxchange();
                             },),
                             Text("i'm travelling for work")
                          ],
                        ),
                        );
                      }
                    ),

                    Divider(
                      color: Colors.yellow.shade600,
                      thickness: 5,
                    ),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.all(4),
                      child: Center(
                        child: Text(
                          'Search',
                          style: robotoMedium.copyWith(
                              color: Theme.of(context).cardColor,
                              fontSize: Dimensions.fontSizeLarge),
                        ),
                      ),
                      color: Colors.blue,
                    )),
                  ],
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[Get.isDarkMode ? 800 : 200]!,
                            spreadRadius: 1,
                            blurRadius: 5)
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                Images.place,
                                fit: BoxFit.fill,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The great getway , your way',
                                style: robotoMedium.copyWith(fontSize: 16),
                              ),
                              SizedBox(
                                height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                              ),
                              Text('save at least 15% on stay worldwide'),
                              SizedBox(
                                height: Dimensions.PADDING_SIZE_EXTRA_SMALL,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    index == 1
                                        ? 'Find Getway Details'
                                        : index == 2
                                            ? 'Find a stay'
                                            : 'search for flights',
                                    style: robotoRegular.copyWith(
                                        color: Colors.blue),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                itemCount: 3,
              ),
              SizedBox(
                height: Dimensions.PADDING_SIZE_SMALL,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[Get.isDarkMode ? 800 : 200]!,
                          spreadRadius: 1,
                          blurRadius: 5)
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Dimensions.PADDING_SIZE_SMALL,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Dimensions.PADDING_SIZE_SMALL),
                        child: Text('Explore India',
                            style: robotoBlack.copyWith(
                                fontSize: Dimensions.fontSizeExtraLarge)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Dimensions.PADDING_SIZE_SMALL),
                        child: Text(
                          'These populer destinations have a lot of offer',
                          style: robotoRegular.copyWith(
                              color: Theme.of(context).disabledColor,
                              fontSize: 16),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      Container(
                        height: 170,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(
                                      Dimensions.PADDING_SIZE_SMALL),
                                  child: Container(
                                    width: 130,
                                    height: 100,
                                    child: Image.asset(
                                      Images.thaj,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          Dimensions.PADDING_SIZE_SMALL),
                                  child: Text('New delhi',
                                      style: robotoMedium.copyWith(
                                          fontSize: Dimensions.fontSizeLarge)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          Dimensions.PADDING_SIZE_SMALL),
                                  child: Text('2926 proprties'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.PADDING_SIZE_SMALL,
                      )
                    ],
                  )),
              SizedBox(
                height: Dimensions.PADDING_SIZE_SMALL,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[Get.isDarkMode ? 800 : 200]!,
                        spreadRadius: 1,
                        blurRadius: 5)
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Dimensions.PADDING_SIZE_SMALL,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Dimensions.PADDING_SIZE_SMALL),
                      child: Text('Quick and easy trip planner',
                          style: robotoBlack.copyWith(
                              fontSize: Dimensions.fontSizeExtraLarge)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Dimensions.PADDING_SIZE_SMALL),
                      child: Text(
                        'pick a vibe explore the top distination in india',
                        style: robotoRegular.copyWith(
                            color: Theme.of(context).disabledColor,
                            fontSize: 16),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      child: GetBuilder<HomeController>(builder: (controller) {
                        return ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(),
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                controller.changeCat(index);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: controller.SelectedCategory == index
                                        ? Colors.blue.shade50
                                        : Theme.of(context).cardColor,
                                    border: Border.all(
                                        color:
                                            controller.SelectedCategory == index
                                                ? Colors.blue
                                                : Theme.of(context).cardColor),
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.RADIUS_EXTRA_LARGE)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          Dimensions.PADDING_SIZE_SMALL),
                                  child: Row(
                                    children: [
                                      Icon(Icons.beach_access),
                                      Text('Beach'),
                                    ],
                                  ),
                                )),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    Container(
                        height: 170,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(
                                            Dimensions.PADDING_SIZE_SMALL),
                                        child: Container(
                                          width: 130,
                                          height: 100,
                                          child: Image.asset(
                                            Images.place,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal:
                                                Dimensions.PADDING_SIZE_SMALL),
                                        child: Text('kozhikode',
                                            style: robotoMedium.copyWith(
                                                fontSize:
                                                    Dimensions.fontSizeLarge)),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal:
                                                Dimensions.PADDING_SIZE_SMALL),
                                        child: Text('40 km'),
                                      )
                                    ],
                                  ),
                                ))),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.PADDING_SIZE_SMALL,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[Get.isDarkMode ? 800 : 200]!,
                          spreadRadius: 1,
                          blurRadius: 5)
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Dimensions.PADDING_SIZE_LARGE,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Dimensions.PADDING_SIZE_SMALL),
                        child: Text('Stay at our top unique properties',
                            style: robotoBlack.copyWith(
                                fontSize: Dimensions.fontSizeExtraLarge)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Dimensions.PADDING_SIZE_SMALL),
                        child: Text(
                          "from castly and villas to bosts and ignoos ,we've got it all",
                          style: robotoRegular.copyWith(
                              color: Theme.of(context).disabledColor,
                              fontSize: 16),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      Container(
                          height: 300,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(
                                              Dimensions.PADDING_SIZE_SMALL),
                                          child: Container(
                                            width: 210,
                                            height: 180,
                                            child: Image.asset(
                                              Images.hotel,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: Dimensions
                                                  .PADDING_SIZE_SMALL),
                                          child: Text('le Roulotte de ciney',
                                              style: robotoMedium.copyWith(
                                                  fontSize: Dimensions
                                                      .fontSizeLarge)),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: Dimensions
                                                  .PADDING_SIZE_SMALL),
                                          child: Text('Belgium ciney'),
                                        ),
                                        SizedBox(
                                          height: Dimensions.PADDING_SIZE_SMALL,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: Dimensions
                                                  .PADDING_SIZE_SMALL),
                                          child: Row(children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.blue.shade900,
                                                  borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(
                                                          Dimensions
                                                              .RADIUS_SMALL),
                                                      bottomRight: Radius
                                                          .circular(Dimensions
                                                              .RADIUS_SMALL),
                                                      topRight: Radius.circular(
                                                          Dimensions
                                                              .RADIUS_SMALL))),
                                              width: 30,
                                              height: 30,
                                              child: Center(
                                                  child: Text(
                                                '8.2',
                                                style: robotoRegular.copyWith(
                                                    color: Theme.of(context)
                                                        .cardColor),
                                              )),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: Dimensions
                                                          .RADIUS_SMALL),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'very good',
                                                    style: robotoRegular
                                                        .copyWith(fontSize: 12),
                                                  ),
                                                  Text(
                                                    '90 review',
                                                    style: robotoRegular
                                                        .copyWith(fontSize: 12),
                                                  )
                                                ],
                                              ),
                                            )
                                          ]),
                                        )
                                      ],
                                    ),
                                  ))),
                    ],
                  )),
              SizedBox(
                height: Dimensions.PADDING_SIZE_SMALL,
              ),
              Container(
                height: 160,
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[Get.isDarkMode ? 800 : 200]!,
                          spreadRadius: 1,
                          blurRadius: 5)
                    ]),
                child: Padding(
                    padding: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Travel more , spend less',
                          style: robotoBold.copyWith(
                              fontSize: Dimensions.fontSizeExtraLarge),
                        ),
                        SizedBox(
                          height: Dimensions.PADDING_SIZE_SMALL,
                        ),
                        SizedBox(
                          height: 90,
                          child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(
                              width: Dimensions.PADDING_SIZE_SMALL,
                            ),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (context, index) => Container(
                              decoration:
                                  BoxDecoration(color:index==0? Colors.blue.shade800:Theme.of(context).cardColor),
                              width: 240,
                              height: 70,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Genius',
                                      style: robotoBold.copyWith(
                                          fontSize:
                                              Dimensions.fontSizeExtraLarge,
                                          color:index!=0?Theme.of(context).textTheme.bodyMedium!.color: Theme.of(context).cardColor),
                                    ),
                                    Text(
                                      'sahad ,you at genius level 1 in our loyalty programme',maxLines: 2,overflow: TextOverflow.ellipsis,
                                      style: robotoRegular.copyWith(
                                          fontSize:
                                              Dimensions.fontSizeDefault,
                                          color:index!=0?Theme.of(context).textTheme.bodyMedium!.color: Theme.of(context).cardColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: Dimensions.PADDING_SIZE_SMALL,),


                      ],
                    )),
              ),
              SizedBox(height: Dimensions.PADDING_SIZE_LARGE,),
              Container(

  decoration: BoxDecoration(
    color: Theme.of(context).cardColor,
           boxShadow: [
                        BoxShadow(
                            color: Colors.grey[Get.isDarkMode ? 800 : 200]!,
                            spreadRadius: 1,
                            blurRadius: 5)
                      ]
  ),


  child:ListView.separated(
    separatorBuilder: (context, index) => Divider(),
    itemCount: 4,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) => Column(
      children: [
        ListTile(leading: Icon(Icons.flight,color: Colors.blueAccent.shade400,
  
        )
        ,
        title: Text('Rent a car',style: robotoBold,),
        subtitle: Text('hunders of cars and 24*7 customer care'),
        trailing: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_forward_ios),
        ),
        ),
     
      ],
    ),
    
    ),
),
SizedBox(height: Dimensions.PADDING_SIZE_LARGE,),
             Container(

  decoration: BoxDecoration(
    color: Theme.of(context).cardColor,
           boxShadow: [
                        BoxShadow(
                            color: Colors.grey[Get.isDarkMode ? 800 : 200]!,
                            spreadRadius: 1,
                            blurRadius: 5)
                      ]
  ),

  child:ListView.separated(
    separatorBuilder: (context, index) => Divider(),
    itemCount: 2,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) => Column(
      children: [
        ListTile(leading: Icon(CupertinoIcons.check_mark,color: Colors.blueAccent.shade400,
  
        )
        ,
        title: Text(index==0?'BOOK NOW ,PLAY AT  THE  PROPERTY':'2,563,380 properties in 227 countries',style: robotoBold,),
        subtitle: Text('hunders of cars and 24*7 customer care'),
        trailing: Icon(Icons.arrow_forward_ios),
        ),
     
      ],
    ),
    
    ),
),

            ],
          ),
        )));
  }
}
