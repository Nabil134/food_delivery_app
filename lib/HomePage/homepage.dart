import 'package:flutter/material.dart';
import 'package:food_delivery_app/HomePage/MapPage.dart';
import 'package:food_delivery_app/HomePage/Resturant.dart';
import 'package:food_delivery_app/HomePage/profile.dart';
import 'package:food_delivery_app/constants.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> _pages = [
    const MainHomePage(),
    const Resturant(),
    const MapPage(),
    const Profile(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: SizedBox(
         height: 70,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.only(left: 25,right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              IconBottomBar(onTap: (){
                setState(() {
                  _selectedIndex=0;
                });
              }, icon: Icons.home, selected: _selectedIndex==0, text: "Home"),
              IconBottomBar(onTap: (){
                setState(() {
                  _selectedIndex=1;
                });
              }, icon: Icons.restaurant, selected: _selectedIndex==1, text: "Restaurant"),
              IconBottomBar(onTap: (){
                setState(() {
                  _selectedIndex=2;
                });
              }, icon: Icons.map, selected: _selectedIndex==2, text: "Map"),
              IconBottomBar(onTap: (){
                setState(() {
                  _selectedIndex=3;
                });
              }, icon: Icons.person, selected: _selectedIndex==3, text: "Profile"),
            ],),
          ),
        ),
      ),

    );
  }
}
/*MainHomePage start here*/
class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size;
    return  Container(
      padding:const EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [

            const Color.fromARGB(255, 83, 69, 164),
            const Color.fromARGB(255, 66, 53, 165).withOpacity(.8),
            const Color.fromARGB(255, 75, 53, 165).withOpacity(.6),
            const Color.fromARGB(255, 121, 112, 159).withOpacity(.4),
            const Color.fromARGB(255, 70, 53, 165).withOpacity(.2),
            const Color(0xFF6F35A5).withOpacity(.1),
            const Color(0xFF6F35A5).withOpacity(.05),
            const Color(0xFF6F35A5).withOpacity(.025),
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(children: [
          /*first portion and TopBar start here*/
const TopBar(),
          /*first portion and TopBar end here*/
          /*second portion and SearchInput portion start here*/
 const SearchInput(),
          /*second portion and SearchInput portion end here*/
          /*third portion and PromoCard portion start here*/
     const     PromoCard(),
          /*third portion and PromoCard portion end here*/
          /*forth portion and Headline portion start here*/
      const    Headline(),
          /*forth portion and Headline portion end here*/
          SizedBox(
            height: he.height * .01,
          ),
          /*fifth portion and CardListView portion start here*/
        const  CardListView(),
          /*fifth portion and CardListView portion end here*/
          /*sixth portion and SHeadline portion start here*/
        const  SHeadline(),
          /*sixth portion and SHeadline portion end here*/
          SizedBox(
            height: he.height * .01,
          ),
          /*seven portion and MenuCardListView portion start here*/
        const  MenuCardListView(),
          /*seven portion and MenuCardListView portion end here*/
          /*eight portion start here*/
          Container(
            padding: const EdgeInsets.only(top: 15,right: 15,bottom: 15),
            width: he.width/1.1,
            child:const Text('Eat what you make happy',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          /*eight portion end here*/
          /*last portion start here*/
          Container(
            padding: const EdgeInsets.only(top: 15,right: 15,bottom: 15),
            height: he.height/3,
            width: he.width,
            child: GridView.builder(
              itemCount: foodItemList.length,
                gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,mainAxisSpacing: 10),
                itemBuilder: (context,index){
              return Card(foodItemList[index].name, '20 min away', foodItemList[index].imageUrl);

            }),
          ),
          /*last portion end here*/
        ],),
      ),
    );
  }
}
/*MainHomePage start here*/
/*IconBottomBar start here*/
class IconBottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onTap;
  const IconBottomBar({super.key,required this.onTap,required this.icon,required this.selected,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(onPressed: onTap, icon: Icon(icon),
        color:selected?kPrimaryColor:Colors.grey ,
      ),
      Text(text,style: TextStyle(
        color: selected?kPrimaryColor:Colors.grey,
      ),),
    ],);
  }
}

/*IconBottomBar end here*/
/*TopBar start here*/
class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Padding(
        padding:const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Text('Find Your\nFavorite Food',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: const Offset(12,26),
          blurRadius: 50,
          spreadRadius: 0,
          color: Colors.grey.withOpacity(.25),
              ),
            ],
          ),
          child: const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.food_bank,
              size: 25,
              color: Color(0xFF6F35A5),
            ),
          ),
        ),
        ],),
      ),
    );
  }
}
/*TopBar end here*/
/*SearchInput start here*/
class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 25,right: 25,top:8,bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(12, 26),
        blurRadius: 50,
        spreadRadius: 0,
        color: Colors.grey.withOpacity(.15),
      ),
          ],
        ),
        child: TextField(
          onChanged: (value){},
          decoration:const InputDecoration(
            prefixIcon: Icon(Icons.search),
            filled: true,
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.grey),
            fillColor: Colors.white,
            contentPadding:  EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0),),
            ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white,width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0),),
          ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white,width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0),),
            ),
          ),
        ),
      ),
    );
  }
}
/*SearchInput end here*/
/*PromoCard start here*/
class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(25),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient:const LinearGradient(
            colors: [
              Color.fromARGB(255, 52, 120, 78),
              Color(0xFF6F35A5),
            ],
          ),
        ),
     child: Stack(children: [
       Opacity(
         opacity: .5,
         child: Image.network(
             "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/BACKGROUND%202.png?alt=media&token=0d003860-ba2f-4782-a5ee-5d5684cdc244",
             fit: BoxFit.cover),
       ),
        Image.network(
            "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Image.png?alt=media&token=8256c357-cf86-4f76-8c4d-4322d1ebc06c"),
const Align(
  alignment: Alignment.topRight,
  child: Padding(
    padding: EdgeInsets.all(25.0),
    child: Text("Want some\nicecream?",style: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold
    ),),
  ),
)
     ],),
      ),
    );
  }
}
/*PromoCard end here*/
/*Headline start here*/
class Headline extends StatelessWidget {
  const Headline({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.only(left: 25,right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nearest Restaurants',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),),
              Text('The best food close to you',style: TextStyle(
                fontWeight: FontWeight.normal,
                color: kPrimaryColor,
              ),),
            ],),
          Text('View All',style: TextStyle(
            fontWeight: FontWeight.normal,
            color: kPrimaryColor,
          ),),
        ],),
    );
  }
}
/*Headline end here*/
/*SHeadline start here*/
class SHeadline extends StatelessWidget {
  const SHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.only(left: 25,right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Popular Menu',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),),
              Text('The best food for you',style: TextStyle(
                fontWeight: FontWeight.normal,
                color: kPrimaryColor,
              ),),
            ],),
          Text('View more',style: TextStyle(
            fontWeight: FontWeight.normal,
            color: kPrimaryColor,
          ),),
        ],),
    );
  }
}
/*SHeadline end here*/
/*CardListView start here*/
class CardListView extends StatelessWidget {
  const CardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(
      left: 25,right: 25,
    ),
      child: SizedBox(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: ListView(scrollDirection: Axis.horizontal,
          children: [
            Card(
                "Biryani",
              "15 min away",
                "https://icon2.cleanpng.com/20180330/axe/kisspng-hyderabadi-biryani-indian-cuisine-dish-chicken-mea-biryani-5abedc42d00da9.6620510115224576668522.jpg",
                ),
            Card(
                "Pizza ",
              "12 min away",
                "https://www.pikpng.com/pngl/m/327-3271979_half-a-pizza-transparent-background-clipart.png",
                ),
            Card(
                "South Indian",
              "15 min away",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
                ),
            Card(
                "Punjabi",
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
                "15 min away"),
          ],
        ),
      ),
    );
  }
}
/*CardListView end here*/
/*MenuCardListView start here*/
class MenuCardListView extends StatelessWidget {
  const MenuCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(
      left: 25,right: 25,
    ),
      child: SizedBox(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: ListView(scrollDirection: Axis.horizontal,
          children: [
            Card(
            "Biryani",
                "15 min away",
            "https://icon2.cleanpng.com/20180330/axe/kisspng-hyderabadi-biryani-indian-cuisine-dish-chicken-mea-biryani-5abedc42d00da9.6620510115224576668522.jpg",),
        Card(
            "Pizza ",
          "12 min away",
          "https://www.pikpng.com/pngl/m/327-3271979_half-a-pizza-transparent-background-clipart.png",
            ),
        Card(
            "South Indian",
          "15 min away",
            "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
            ),
        Card(
            "Punjabi",
          "15 min away",
            "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/Resturant%20Image%20(1).png?alt=media&token=461162b1-686b-4b0e-a3ee-fae1cb8b5b33",
            ),
        ]
        ),
      ),
    );
  }
}
/*MenuCardListView end here*/
/*Card start here*/
class Card extends StatelessWidget {
  final String text;
  final String subtext;
  final String imgurl;
  Card(this.text,this.subtext,this.imgurl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.only(left: 25,bottom: 15),
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
            offset: const Offset(10, 20),
          blurRadius: 10,
          spreadRadius: 0,
          color: Colors.grey.withOpacity(.05),),
          ],
        ),
      child: Column(
        children: [
          Image.network(imgurl,height: 70,fit: BoxFit.cover,
          ),
          Spacer(),
          Text(text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
          ),
          const SizedBox(height: 5,),
          Text(subtext,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
          ),
          const SizedBox(height: 10,),
        ],
      ),
      ),
    );
  }
}
/*Card end here*/


