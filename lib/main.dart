import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:uidesign_pencilbox5/pages/my_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Learning Ui",
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<String> carouselImages = [
    "data:image/jpeg;base64,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",
    "https://mensgear.b-cdn.net/wp-content/uploads/2019/04/Best-Travel-Gear-Gadgets-470x315.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8pnbyeeClKWI65rZDJgqXDJpKYFXyMlVRYw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYsEdrPrqaio4W2eK7rvx9Skh0PQQui1nwMA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYqP_5OwLoymmDwDBt9T7XJyC0C-o04DCAAg&usqp=CAU"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Products"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.red.shade200,
        showUnselectedLabels: true,
        onTap: (_index) {
          setState(() {
            index = _index;
          });
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.grid_outline), label: "Catagories"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.person_add_outline), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.cart_outline), label: "Cart"),
        ],
      ),
      drawer: myDrawer(context),
      body: ListView(

        shrinkWrap: true,
        children: [
          CarouselSlider(
            options: CarouselOptions(
                aspectRatio: 16 / 9, autoPlay: true, viewportFraction: .9),
            items: carouselImages.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 0.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image.network(
                        i,
                        fit: BoxFit.cover,
                      ));
                },
              );
            }).toList(),
          ),
          horizontalSlider(),
          ////
          verticalSlider(),
        ],
      ),
    );
  }

  Widget buildWidget() {
    switch (index) {
      case 0:
        return Center(child: Text("Home"));
        break;
      case 1:
        return Center(child: Text("Catagories"));
        break;
      case 2:
        return Center(child: Text("Profile"));
        break;
      case 3:
        return Center(child: Text("Cart"));
        break;

      default:
        Center(child: Text("Home"));
        break;
    }

    return buildWidget();
  }

  Widget horizontalSlider() {

    return Column(

      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 2),
                child: Text(
                  "Our New Products",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              TextButton(onPressed: () {}, child: Text("View More")),
            ],
          ),
        ),
        ////

        SizedBox(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      child: Card(
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          height: 200,
                          child: AspectRatio(
                            aspectRatio: 1 / 1,
                            child: Image.network(
                                "https://assetscdn1.paytm.com/images/catalog/product/A/AP/APPAMPLE-MEN-KIKHAL1070621AA374474/1562997954268_0..jpg"),
                          ),
                        ),
                      ),
                    ),
                    Positioned(child: Chip(label: Text("-50%")),top: 5,left: 10,),
                  ],
                );
              }),
        )
      ],
    );
  }

  Widget verticalSlider()
  {
    return Column(

      children: [
        Padding(

          padding: const EdgeInsets.all(5.0),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 2),
                child: Text(
                  "Recomonded Products",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              TextButton(onPressed: () {}, child: Text("View More")),
            ],
          ),
        ),


        ///
        ///
        /// //
        ///
        ///
        ///
        ListView.builder(itemBuilder: (context,index){

          return Container(
            color: Colors.white,

            margin: EdgeInsets.only(left: 5,right: 5,bottom: 12),
           child: Row(


             children: [
               Stack(

                 children: [
                   Container(

                     child: AspectRatio(
                       aspectRatio: 1 / 1,
                       child: Image.network(
                           "https://assetscdn1.paytm.com/images/catalog/product/A/AP/APPAMPLE-MEN-KIKHAL1070621AA374474/1562997954268_0..jpg"),
                     ),
                     width: MediaQuery.of(context).size.width*.45,
                   ),
                   Positioned(child: Chip(label: Text("-50%")),top: 5,left: 10,),
                 ],
               ),
               Container(

                 width: MediaQuery.of(context).size.width*.45,


                 child: Column(

                   children: [

                     Text("Full Sized Polo T-shirt",style: TextStyle(fontSize: 16),),
                     Text("45 Taka",style: TextStyle(fontSize: 18),),
                      RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 23,
                      itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                      itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.red,

                      ),
                      onRatingUpdate: (rating) {
                      print(rating);
                      },
                      ),

                   ],
                 ),
               )
             ],
           ),
          );
        },
          scrollDirection: Axis.vertical,
          itemCount: 8,
         physics: ScrollPhysics(),
          shrinkWrap: true,),
      ],
    );
  }
}
