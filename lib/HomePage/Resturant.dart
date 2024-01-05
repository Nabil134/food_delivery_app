import 'package:flutter/material.dart';
import 'package:food_delivery_app/HomePage/ResturantDetail.dart';
import 'package:food_delivery_app/constants.dart';
class Resturant extends StatefulWidget {
  const Resturant({super.key});

  @override
  State<Resturant> createState() => _ResturantState();
}

class _ResturantState extends State<Resturant> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: restaurantAvailable(context),
    );
  }
}
/*restaurantAvailable start here*/
Widget restaurantAvailable(BuildContext context){
  var he = MediaQuery.of(context).size;
return Container(
  padding: const EdgeInsets.only(top: 50),
  height: he.height,
  width: he.width,
  decoration:BoxDecoration(
gradient:LinearGradient(
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
  child:Column(children:[
    Padding(padding:EdgeInsets.only(top: 18,left: 18,right: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        const Text(
          "Restaurants Near you",
          style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      IconButton(onPressed: (){}, icon: Icon(Icons.search,
        color: Colors.white,
      ),),
      ],),
    ),
Expanded(child:
  ListView.builder(
    itemCount: restaurantList.length,
      itemBuilder: (context,index){
    return itemBuilder(he,context,index);
  }),
),
  ]),
);
}
/*restaurantAvailable end here*/
/*itemBuilder start here*/
Widget itemBuilder(Size size,BuildContext context,int index ){
  return Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
  child: GestureDetector(
    onTap: (){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ResturantDetail(
              index: index,
            )));
    },
    child: Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: size.height / 2.5,
        width: size.width / 1.1,
        child: Column(children: [
          Container(
            height: size.height / 4,
            width: size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(restaurantList[index].imageUrl,
                ),
              ),
            ),
          ),
       Container(
         height: size.height / 12,
         width: size.width / 1.2,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
           Text(
             restaurantList[index].title,
             style: const TextStyle(
               color: Colors.black,
               fontSize: 20,
               fontWeight: FontWeight.w500,
             ),
           ),
        Container(
          height: size.height / 25,
          width: size.width / 7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green,
          ),
          alignment: Alignment.center,
          child: Text(restaurantList[index].rating,style:const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
        ),
         ],),
       ),
          Container(
            width: size.width / 1.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(restaurantList[index].locations,style:const TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),),
            Padding(padding: const EdgeInsets.only(right: 8),
              child:  Text('${restaurantList[index].price}  for one',style:const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),),
            ),
            ],),
          ),
        ],),
      ),
    ),
  ),
  );
}
/*itemBuilder end here*/