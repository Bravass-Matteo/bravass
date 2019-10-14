import 'package:bravass/pages/form_tambah.dart';
import 'package:bravass/pages/home_screen.dart';
import 'package:bravass/pages/home_profile.dart';
import 'package:bravass/pages/movie_data.dart';
import 'package:carousel_slider/carousel_slider.dart';

//import 'package:bravass/pages/home_screen.dart';
import 'package:carousel_pro/carousel_pro.dart';
//import 'package:bravass/utils/my_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:folding_cell/folding_cell.dart';
import 'package:bmnav/bmnav.dart' as bmnav;

Color primaryColor = Color(0xff362c20);
Color latarColor = Colors.white;
Color bottomNavColor = Color(0xffeff0f1);
Color blekColor = Color(0xff141518);

//final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =  new GlobalKey<RefreshIndicatorState>();
//
//GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class Dahsboard extends StatefulWidget {
  @override
  _DahsboardState createState() => _DahsboardState();
}

class _DahsboardState extends State<Dahsboard> {

  int currentTab = 0;
  final List<Widget> screens = [
    Isi(),
    FormTambah(),
    MovieData(),
    NotificationKelas()
  ];
  Widget currentScreen = Isi();
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

//    Widget image_carousel = new Container(
//      height: 250.0,
//      width: 900.0,
//      child: new Carousel(
//          boxFit: BoxFit.cover,
//          images: [
//            AssetImage('images/img1.jpg'),
//            AssetImage('images/img2.jpg'),
//            AssetImage('images/img3.jpg'),
//            AssetImage('images/img4.jpg'),
//            AssetImage('images/img5.jpg'),
//            AssetImage('images/img6.jpg'),
//            AssetImage('images/img7.jpg')
//          ],
//          autoplay: true,
//          autoplayDuration: Duration(milliseconds: 5000),
//          animationCurve: Curves.fastOutSlowIn,
//          animationDuration: Duration(milliseconds: 1000),
//          indicatorBgPadding: 8.0,
//          dotColor: Colors.white,
//          dotSize: 4.0),
//    );
//
//    int _bottomNavBarIndex =0;

    return Scaffold(
//      body: ListView(
//        children: <Widget>[
////          _top(),
////          SizedBox(height: 20),
//          image_carousel,
//          SizedBox(height: 20),
////          Padding(
////            padding: EdgeInsets.all(16),
////            child: Row(
////              crossAxisAlignment: CrossAxisAlignment.center,
////              mainAxisAlignment: MainAxisAlignment.spaceBetween,
////              children: <Widget>[
////                Text(
////                  "CATEGORY",
////                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
////                ),
////                Text(
////                  "View All",
////                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
////                )
////              ],
////            ),
////          ),
//          Container(
//            child: SimpleFoldingCell(
//              frontWidget: FrontWidget(),
//              innerTopWidget: InnerTopWidget(),
//              innerBottomWidget: InnerBottomWidget(),
//              cellSize: Size(MediaQuery.of(context).size.width, 175),
//              padding: EdgeInsets.all(10.0),
//            ),
//          ),
////          Center(
////            child: AspectRatio(
////              aspectRatio: 100 / 50,
////              child: Container(
////                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 30),
//////                margin: EdgeInsets.only(top: 16, left: 16, right: 16),
////                child: GridView(
////                  physics: const NeverScrollableScrollPhysics(),
////                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
////                    crossAxisCount: 3,
////                    childAspectRatio: 3 / 2.2,
////                  ),
////                  children: <Widget>[
////                    _gridItem(
////                        Icons.airport_shuttle, "Mobil", NotificationKelas()),
////                    _gridItem(Icons.add_shopping_cart, "Keranjang",
////                        NotificationKelas()),
////                    _gridItem(Icons.arrow_drop_down_circle, "More",
////                        NotificationKelas()),
////                    _gridItem(Icons.bluetooth_searching, "Blutut",
////                        NotificationKelas()),
////                    _gridItem(
////                        Icons.add_location, "Location", NotificationKelas()),
////                    _gridItem(Icons.arrow_drop_down_circle, "More",
////                        NotificationKelas()),
////                  ],
////                ),
////              ),
////            ),
////          ),
//          SizedBox(height: 20),
//
//          Container(
//            height: 70,
//            child: ListView(
//              scrollDirection: Axis.horizontal,
//              children: <Widget>[
//                _gridItem(
//                    Icons.airport_shuttle, "Mobil", NotificationKelas()),
//                _gridItem(Icons.add_shopping_cart, "Keranjang",
//                    NotificationKelas()),
//                _gridItem(Icons.arrow_drop_down_circle, "More",
//                    NotificationKelas()),
//                _gridItem(Icons.bluetooth_searching, "Blutut",
//                    NotificationKelas()),
//                _gridItem(
//                    Icons.add_location, "Location", NotificationKelas()),
//                _gridItem(Icons.arrow_drop_down_circle, "More",
//                    NotificationKelas()),
//              ],
//            ),
//          ),
//
//          Container(
//            margin: EdgeInsets.only(top: 32,left: 16),
//            child: Row(
//              children: <Widget>[
//                Text(
//                  "ROOM CATEGORY",
//                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//                )
//              ],
//            ),
//          ),
//
//          _cardEvent("Center Stage", "GROUND FLOOR", "20 juta/hr","images/img1.jpg", "20"),
//          _cardEvent("Top Stage", "UPPER GROUND FLOOR", "40 juta/hr","images/img2.jpg", "30",),
//          _cardEvent("Bottom Stage", "LOWER GROUND FLOOR", "20 juta/hr","images/img3.jpg", "25",),
//
//          SizedBox(height: 20),
//          Padding(
//            padding: EdgeInsets.all(16),
//            child: Row(
//              children: <Widget>[
//                Text(
//                  "LATEST ARTICLE",
//                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//                )
//              ],
//            ),
//          ),
//
//          _cardArtikel(1, "Keterangan 1", "20 items"),
//          _cardArtikel(2, "Keterangan 2", "12 items"),
//          _cardArtikel(3, "Keterangan 3", "8 items"),
//          _cardArtikel(4, "Keterangan 4", "7 items"),
//        ],
//
//
//      ),
      body: PageStorage(child: currentScreen, bucket: bucket),
      bottomNavigationBar: bmnav.BottomNav(
        index: currentTab,
        labelStyle: bmnav.LabelStyle(visible: true),
        onTap: (i) {
          setState(() {
            currentTab = i;
            currentScreen = screens[i];
          });
        },
        items: [
          bmnav.BottomNavItem(Icons.home, label: 'Home'),
          bmnav.BottomNavItem(Icons.book, label: 'Book Room'),
          bmnav.BottomNavItem(Icons.movie, label: 'Movie'),
          bmnav.BottomNavItem(Icons.person, label: 'Me')
        ],
      ),
//      bottomNavigationBar: new BottomNavigationBar(
//           currentIndex: _bottomNavBarIndex,
//          onTap: (int index){
//            setState(() {
//              _bottomNavBarIndex = index;
//              _selectedMenu(menu[index]);
//            });
//          },
//          items: [
//            new BottomNavigationBarItem(
//              icon:
//            )
//          ],
//      ),
//      bottomNavigationBar: BottomAppBar(
//        shape: const CircularNotchedRectangle(),
//        notchMargin: 8.0,
//        child: new Row(
//          mainAxisSize: MainAxisSize.max,
//          mainAxisAlignment: MainAxisAlignment.spaceAround,
//          children: <Widget>[
////            IconButton(icon: Icon(Icons.home), onPressed: () => MyNavigator.goToProfile(context)),
////            IconButton(icon: Icon(Icons.movie), onPressed: () => MyNavigator.goToMovie(context)),
//
//            IconButton(
//                icon: Column(
//                  children: <Widget>[
//                    Icon(Icons.home),
//                    Text(
//                      'HOME',
//                      style:
//                          TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
//                    )
//                  ],
//                ),
//                onPressed: () => MyNavigator.goToProfile(context)),
//
//            IconButton(
//                icon: Column(
//                  children: <Widget>[
//                    Icon(Icons.book),
//                    Text(
//                      'BOOKED',
//                      style:
//                          TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
//                    )
//                  ],
//                ),
//                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => FormTambah()));}
//              ),
//            IconButton(
//                icon: Column(
//                  children: <Widget>[
//                    Icon(Icons.movie),
//                    Text(
//                      'MOVIE',
//                      style:
//                          TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
//                    )
//                  ],
//                ),
//                onPressed: () => MyNavigator.goToMovie(context)),
//            IconButton(
//                icon: Column(
//                  children: <Widget>[
//                    Icon(Icons.person),
//                    Text(
//                      'ME',
//                      style:
//                          TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
//                    )
//                  ],
//                ),
//                onPressed: () => MyNavigator.goToMovie(context)),
////            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {
////              Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationKelas()));
////            } ),
//          ],
//        ),
//        color: bottomNavColor,
//      ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.add),
//        onPressed: () {
//          Navigator.push(
//              context, MaterialPageRoute(builder: (context) => FormTambah()));
//        },
//        backgroundColor: primaryColor,
//      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

//  _cardEvent(judul, lantai, harga,img, jumlah_bangku) {
//    return Padding(
//      padding: EdgeInsets.all(16),
//      child: Container(
//        padding: EdgeInsets.all(16),
//        color: Colors.white,
//        child: Column(
//          children: <Widget>[
//            Row(
//              mainAxisAlignment: MainAxisAlignment.start,
////              margin: EdgeInsets.only(bottom: 8),
//              children: <Widget>[
//                Text(
//                  judul,
//                  style: TextStyle(
//                    fontSize: 16,fontWeight: FontWeight.bold
//                  ),
//                ),
//              ],
//            ),
//            Container(
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  Container(
//                    child: Text(
//                      lantai,
//                      style: TextStyle(fontSize: 9),
//                    ),
//                  ),
//                  Container(
//                    child: Text(
//                      harga,
//                      style: TextStyle(fontSize: 11),
//                    ),
//                  )
//                ],
//              ),
//            ),
//            SizedBox(
//              height: 10.0,
//            ),
//            Container(
//              width: 999,
//              height: 150,
//              decoration: BoxDecoration(
//                  color: Colors.black,
//                  image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
//                  borderRadius: BorderRadius.circular(5.0)),
//            ),
//            SizedBox(
//              height: 10.0,
//            ),
//            Container(
//              padding: EdgeInsets.all(8),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: <Widget>[
//                  Column(
//                    children: <Widget>[
//                      Container(
//                        margin: EdgeInsets.only(bottom: 4),
//                        child: Text(
//                          jumlah_bangku,
//                          style: TextStyle(
//                              fontSize: 14, fontWeight: FontWeight.bold),
//                        ),
//                      ),
//                      Container(
//                        child: Text(
//                          'SEATS',
//                          style: TextStyle(
//                              fontSize: 13, fontWeight: FontWeight.bold),
//                        ),
//                      )
//                    ],
//                  ),
//                  Column(
//                    children: <Widget>[
//                      Container(
//                        child: Icon(Icons.laptop_chromebook)
//                      ),
//                      Container(
//                        child: Text(
//                          'Monitor',
//                          style: TextStyle(
//                            fontSize: 12,fontWeight: FontWeight.bold
//                          ),
//                        ),
//                      )
//                    ],
//                  ),
//                  Column(
//                    children: <Widget>[
//                      Container(
//                          child: Icon(Icons.personal_video)
//                      ),
//                      Container(
//                        child: Text(
//                            'Whiteboard',
//                            style: TextStyle(
//                              fontSize: 12,fontWeight: FontWeight.bold
//                            ),
//                        ),
//                      )
//                    ],
//                  ),
//
//                  Column(
//                    children: <Widget>[
//                      Container(
//                          child: Icon(Icons.wifi)
//                      ),
//                      Container(
//                        child: Text(
//                            'Wifi',
//                            style: TextStyle(
//                              fontSize: 12,fontWeight: FontWeight.bold
//                            ),
//                        ),
//                      )
//                    ],
//                  ),
//
//                ],
//              ),
//            ),
//            Row(
//                 children: <Widget>[
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.symmetric(horizontal: 3),
//                       child: RaisedButton(
//                         onPressed: (){},
//                         child: const Text(
//                           '2:00 PM',
//                           style: TextStyle(
//                               fontSize: 10
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.symmetric(horizontal: 3),
//                       child: RaisedButton(
//                         onPressed: (){},
//                         child: const Text(
//                           '60 MIN',
//                           style: TextStyle(
//                               fontSize: 10
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.symmetric(horizontal: 3),
//                       child: RaisedButton(
//                         onPressed: (){},
//                         child: const Text(
//                           '90 MIN',
//                           style: TextStyle(
//                               fontSize: 10
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                       margin: EdgeInsets.symmetric(horizontal: 3),
//                       child: RaisedButton(
//                         onPressed: (){},
//                         child: const Text(
//                           '120 MIN',
//                           style: TextStyle(
//                               fontSize: 10
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//
//                 ],
//            )
//          ],
//        ),
//      ),
//    );
//  }
//
//  _cardArtikel(image, Ket, qty) {
//    return Padding(
//      padding: EdgeInsets.all(16),
//      child: Container(
//        padding: EdgeInsets.all(16),
//        color: Colors.white,
//        child: Row(
//          children: <Widget>[
//            Container(
//              width: 100,
//              height: 100,
//              margin: EdgeInsets.only(right: 16),
//              decoration: BoxDecoration(
//                  color: Colors.black,
//                  image:
//                      DecorationImage(image: AssetImage(""), fit: BoxFit.cover),
//                  borderRadius: BorderRadius.circular(20.0)),
//            ),
//            SizedBox(
//              height: 20.0,
//            ),
//            Container(
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Text(
//                    Ket,
//                    style:
//                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
//                  ),
//                  SizedBox(
//                    width: 20,
//                  ),
//                  Text(
//                    qty,
//                    style: TextStyle(
//                        color: Colors.red, fontWeight: FontWeight.bold),
//                  )
//                ],
//              ),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//
//  _gridItem(icon, nama, page) {
//    return GestureDetector(
//      onTap: () {
//        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
//      },
//      child: Container(
//        margin: EdgeInsets.symmetric(horizontal: 16),
//        child: Column(
//          children: <Widget>[
//            CircleAvatar(
//              child: Icon(
//                icon,
//                size: 16.0,
//                color: Colors.white,
//              ),
//              backgroundColor: primaryColor.withOpacity(0.9),
//            ),
//            SizedBox(height: 10.0),
//            Text(
//              nama,
//              style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.bold),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//
//  _top() {
//    return Container(
//      padding: EdgeInsets.all(16),
//      decoration: BoxDecoration(
//          color: primaryColor,
//          borderRadius: BorderRadius.only(
//              bottomLeft: Radius.circular(30),
//              bottomRight: Radius.circular(30))),
//      child: Column(
//        children: <Widget>[
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              Row(
//                children: <Widget>[
//                  CircleAvatar(
//                    backgroundImage: AssetImage(""),
//                  ),
//                  SizedBox(width: 10),
//                  Text(
//                    "Hi," + " Matteo",
//                    style: TextStyle(color: Colors.white),
//                  )
//                ],
//              ),
//              IconButton(
//                icon: Icon(
//                  Icons.notifications,
//                  color: Colors.white,
//                ),
//                onPressed: () => _onButtonPressed(),
////                onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()))
//              )
//            ],
//          ),
//          SizedBox(height: 30),
//          TextField(
//            decoration: InputDecoration(
//                hintText: "Search",
//                fillColor: Colors.white,
//                filled: true,
//                suffixIcon: Icon(Icons.filter_list),
//                enabledBorder: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(20),
//                    borderSide: BorderSide(color: Colors.transparent)),
//                contentPadding:
//                    EdgeInsets.symmetric(horizontal: 16, vertical: 16)),
//          )
//        ],
//      ),
//    );
//  }
//
//  Container InnerTopWidget() {
//    return Container(
////    color: Colors.lightGreen,
//        );
//  }
//
//  Container InnerBottomWidget() {
//    return Container(
////    color: Colors.white,//shadow box
//        );
//  }
//
//  Container FrontWidget() {
//    return Container(
////    color: Color(0xff2980b9),//shadow box
//      alignment: Alignment.center,
//      child: Column(
//        children: <Widget>[
//          Expanded(
//            flex: 2,
//            child: Container(
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(8.0),
//                color: primaryColor,
//              ),
//              child: Container(
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: <Widget>[
//
//                        Container(
//                          child: Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Text(
//                              'Bravass',
//                              style: TextStyle(
//                                  color: Colors.white, fontSize: 20.0),
//                            ),
//                          ),
//                        )
//                      ],
//                    )
//                  ],
//                ),
//              ),
//            ),
//          ),
//          Expanded(
//            flex: 2,
//            child: Container(
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(8.0),
//                color: bottomNavColor,
//              ),
//              child: Container(
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: <Widget>[
//
//                        Container(
//                          child: Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child:
//                            Text(
//                              '09:00AM / 09:00PM',
//                              style: TextStyle(
//                                  color: primaryColor, fontSize: 20.0),
//                            ),
//                          ),
//                        )
//                      ],
//                    )
//                  ],
//                ),
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//
//  Container FrontWidget2() {
//    return Container(
////    color: Color(0xff2980b9),//shadow box
//      alignment: Alignment.center,
//      child: Row(
//        children: <Widget>[
//          Expanded(
//            flex: 1,
//            child: Container(
//                child: RaisedButton(
//                  onPressed: (){},
//                  child: const Text(
//                    '2:00 PM',
//                    style: TextStyle(
//                        fontSize: 10
//                    ),
//                  ),
//                ),
//            ),
//          ),
//          Expanded(
//            flex: 1,
//            child: Container(
//              child: RaisedButton(
//                onPressed: (){},
//                child: const Text(
//                  '2:00 PM',
//                  style: TextStyle(
//                      fontSize: 10
//                  ),
//                ),
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
}

class Isi extends StatefulWidget {
  @override
  _IsiState createState() => _IsiState();
}

class _IsiState extends State<Isi> {
  Widget image_carousel = new Container(
    height: 250.0,
    width: 900.0,
    child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/img1.jpg'),
          AssetImage('images/img2.jpg'),
          AssetImage('images/img3.jpg'),
          AssetImage('images/img4.jpg'),
          AssetImage('images/img5.jpg'),
          AssetImage('images/img6.jpg'),
          AssetImage('images/img7.jpg')
        ],

        autoplay: true,
        autoplayDuration: Duration(milliseconds: 5000),
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        indicatorBgPadding: 8.0,
        dotColor: Colors.white,
        dotSize: 4.0),
  );

  Widget carousell = new Container(
      height: 150.0,
//      margin: EdgeInsets.only(top: 16),
      child: CarouselSlider(
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 300),
        pauseAutoPlayOnTouch: Duration(seconds: 10),
        items: [
          'http://pic3.16pic.com/00/55/42/16pic_5542988_b.jpg',
          'http://photo.16pic.com/00/38/88/16pic_3888084_b.jpg',
          'http://pic3.16pic.com/00/55/42/16pic_5542988_b.jpg',
          'http://photo.16pic.com/00/38/88/16pic_3888084_b.jpg',
        ].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(30),
                          topRight: const Radius.circular(30),
                          bottomLeft: const Radius.circular(30),
                          bottomRight: const Radius.circular(30)),

                  ),
                  child: GestureDetector(
                        child: Image.network(i, fit: BoxFit.fill),
                        onTap: () {
                          Navigator.push<Widget>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageScreen(i),
                            ),
                          );
                        }
                      ),
              );
            },
          );
        }).toList(),
      ));

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              color: Color(0xff737373),
              height: 180,
              child: Container(
                child: _buildBottomNavigationMenu(),
                decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    borderRadius: BorderRadius.only(topLeft: const Radius.circular(30),topRight: const Radius.circular(30))
                ),
              )
          );
        });
  }

  Column _buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text('Cooling'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.accessibility_new),
          title: Text('People'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.assessment),
          title: Text('Stats'),
          onTap: () {},
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
          elevation: 0.1,

          backgroundColor: primaryColor,
          title: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(""),
              ),
              Text('    ' + 'Hi, Matteo', style: TextStyle(fontSize: 14))
            ],
          ),
          actions: <Widget>[
//            new IconButton(icon: Icon(Icons.search,color: Colors.white), onPressed: (){}),
            new IconButton(
              icon: Icon(Icons.email, color: Colors.white),
              onPressed: () => _onButtonPressed(),
//              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage() ),);}
            ),
            new IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () => _onButtonPressed(),
//              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage() ),);}
            ),
            new IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed: () => _onButtonPressed(),
//              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage() ),);}
            )
          ]
      ),
      body: ListView(
        children: <Widget>[
//          _top(),
//          SizedBox(height: 20),
          image_carousel,
          SizedBox(height: 20),
//          Padding(
//            padding: EdgeInsets.all(16),
//            child: Row(
//              crossAxisAlignment: CrossAxisAlignment.center,
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: <Widget>[
//                Text(
//                  "CATEGORY",
//                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                ),
//                Text(
//                  "View All",
//                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
//                )
//              ],
//            ),
//          ),
          Container(
            child: SimpleFoldingCell(
              frontWidget: FrontWidget(),
              innerTopWidget: InnerTopWidget(),
              innerBottomWidget: InnerBottomWidget(),
              cellSize: Size(MediaQuery.of(context).size.width, 175),
              padding: EdgeInsets.all(10.0),
            ),
          ),
//          Center(
//            child: AspectRatio(
//              aspectRatio: 100 / 50,
//              child: Container(
//                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 30),
////                margin: EdgeInsets.only(top: 16, left: 16, right: 16),
//                child: GridView(
//                  physics: const NeverScrollableScrollPhysics(),
//                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                    crossAxisCount: 3,
//                    childAspectRatio: 3 / 2.2,
//                  ),
//                  children: <Widget>[
//                    _gridItem(
//                        Icons.airport_shuttle, "Mobil", NotificationKelas()),
//                    _gridItem(Icons.add_shopping_cart, "Keranjang",
//                        NotificationKelas()),
//                    _gridItem(Icons.arrow_drop_down_circle, "More",
//                        NotificationKelas()),
//                    _gridItem(Icons.bluetooth_searching, "Blutut",
//                        NotificationKelas()),
//                    _gridItem(
//                        Icons.add_location, "Location", NotificationKelas()),
//                    _gridItem(Icons.arrow_drop_down_circle, "More",
//                        NotificationKelas()),
//                  ],
//                ),
//              ),
//            ),
//          ),
          SizedBox(height: 20),

          Container(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _gridItem(Icons.airport_shuttle, "Mobil", NotificationKelas()),
                _gridItem(Icons.add_shopping_cart, "Keranjang", NotificationKelas()),
                _gridItem(Icons.arrow_drop_down_circle, "More", NotificationKelas()),
                _gridItem(Icons.bluetooth_searching, "Blutut", NotificationKelas()),
                _gridItem(Icons.add_location, "Location", NotificationKelas()),
                _gridItem(Icons.arrow_drop_down_circle, "More", NotificationKelas()),
              ],
            ),
          ),
          SizedBox(height: 20),
          carousell,

          Container(
            margin: EdgeInsets.only(top: 32,left: 16),
            child: Row(
              children: <Widget>[
                Text(
                  "ROOM CATEGORY",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),

          _cardEvent("Center Stage", "GROUND FLOOR", "20 juta/hr","images/img1.jpg", "20"),
          _cardEvent("Top Stage", "UPPER GROUND FLOOR", "40 juta/hr","images/img2.jpg", "30",),
          _cardEvent("Bottom Stage", "LOWER GROUND FLOOR", "20 juta/hr","images/img3.jpg", "25",),

          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                Text(
                  "LATEST ARTICLE",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),

          _cardArtikel(1, "Keterangan 1", "20 items"),
          _cardArtikel(2, "Keterangan 2", "12 items"),
          _cardArtikel(3, "Keterangan 3", "8 items"),
          _cardArtikel(4, "Keterangan 4", "7 items"),
        ],
      ),
    );
  }

  _cardEvent(judul, lantai, harga,img, jumlah_bangku) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(16),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
//              margin: EdgeInsets.only(bottom: 8),
              children: <Widget>[
                Text(
                  judul,
                  style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Text(
                      lantai,
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                  Container(
                    child: Text(
                      harga,
                      style: TextStyle(fontSize: 11),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 999,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(5.0)),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 4),
                        child: Text(
                          jumlah_bangku,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          'SEATS',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.laptop_chromebook)
                      ),
                      Container(
                        child: Text(
                          'Monitor',
                          style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.personal_video)
                      ),
                      Container(
                        child: Text(
                          'Whiteboard',
                          style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      Container(
                          child: Icon(Icons.wifi)
                      ),
                      Container(
                        child: Text(
                          'Wifi',
                          style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    child: RaisedButton(
                      onPressed: (){},
                      child: const Text(
                        '2:00 PM',
                        style: TextStyle(
                            fontSize: 10
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    child: RaisedButton(
                      onPressed: (){},
                      child: const Text(
                        '60 MIN',
                        style: TextStyle(
                            fontSize: 10
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    child: RaisedButton(
                      onPressed: (){},
                      child: const Text(
                        '90 MIN',
                        style: TextStyle(
                            fontSize: 10
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    child: RaisedButton(
                      onPressed: (){},
                      child: const Text(
                        '120 MIN',
                        style: TextStyle(
                            fontSize: 10
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

  _cardArtikel(image, Ket, qty) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(16),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  color: Colors.black,
                  image:
                  DecorationImage(image: AssetImage(""), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    Ket,
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    qty,
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _gridItem(icon, nama, page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              child: Icon(
                icon,
                size: 16.0,
                color: Colors.white,
              ),
              backgroundColor: primaryColor.withOpacity(0.9),
            ),
            SizedBox(height: 10.0),
            Text(
              nama,
              style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

//  _top() {
//    return Container(
//      padding: EdgeInsets.all(16),
//      decoration: BoxDecoration(
//          color: primaryColor,
//          borderRadius: BorderRadius.only(
//              bottomLeft: Radius.circular(30),
//              bottomRight: Radius.circular(30))),
//      child: Column(
//        children: <Widget>[
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              Row(
//                children: <Widget>[
//                  CircleAvatar(
//                    backgroundImage: AssetImage(""),
//                  ),
//                  SizedBox(width: 10),
//                  Text(
//                    "Hi," + " Matteo",
//                    style: TextStyle(color: Colors.white),
//                  )
//                ],
//              ),
//              IconButton(
//                icon: Icon(
//                  Icons.notifications,
//                  color: Colors.white,
//                ),
//                onPressed: () => _onButtonPressed(),
////                onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()))
//              )
//            ],
//          ),
//          SizedBox(height: 30),
//          TextField(
//            decoration: InputDecoration(
//                hintText: "Search",
//                fillColor: Colors.white,
//                filled: true,
//                suffixIcon: Icon(Icons.filter_list),
//                enabledBorder: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(20),
//                    borderSide: BorderSide(color: Colors.transparent)),
//                contentPadding:
//                EdgeInsets.symmetric(horizontal: 16, vertical: 16)),
//          )
//        ],
//      ),
//    );
//  }

  Container InnerTopWidget() {
    return Container(
//    color: Colors.lightGreen,
    );
  }

  Container InnerBottomWidget() {
    return Container(
//    color: Colors.white,//shadow box
    );
  }

  Container FrontWidget() {
    return Container(
//    color: Color(0xff2980b9),//shadow box
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: primaryColor,
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Bravass',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: bottomNavColor,
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                            Text(
                              '09:00AM / 09:00PM',
                              style: TextStyle(
                                  color: primaryColor, fontSize: 20.0),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container FrontWidget2() {
    return Container(
//    color: Color(0xff2980b9),//shadow box
      alignment: Alignment.center,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: RaisedButton(
                onPressed: (){},
                child: const Text(
                  '2:00 PM',
                  style: TextStyle(
                      fontSize: 10
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: RaisedButton(
                onPressed: (){},
                child: const Text(
                  '2:00 PM',
                  style: TextStyle(
                      fontSize: 10
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationKelas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: primaryColor,
        title: Text("Menu"),
      ),
    );
  }
}

class ImageScreen extends StatefulWidget {
  final String url;
  ImageScreen(this.url);

  @override
  _ImageScreenState createState() => _ImageScreenState(url);
}

class _ImageScreenState extends State<ImageScreen> {
  final String url;
  _ImageScreenState(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(url, width: double.infinity,),
    );
  }
}

class Room extends StatefulWidget {
  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


