import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return   Container(
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon:const Icon(Icons.menu,
              color: Colors.white,
            ),
            tooltip: 'Menu',
            onPressed: (){},
          ),
       centerTitle: true,
          title: Text('Profile',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
          ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(LineAwesomeIcons.moon,color: Colors.white,),),
        ],
elevation: 0,
        ),
    body:SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
        child: Column(children: [
          /*first portion start here*/
          SizedBox(height: 120,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset('assets/profile.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          /*first portion end here*/
       const SizedBox(height: 15,),
          /*second portion start here*/
          Text(
            'Muhammad Nabeel',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.grey.shade800, fontSize: 24),
          ),
          /*second portion end here*/
          const SizedBox(height: 5,),
          /*third portion start here*/
          Text(
            'mohammad.nabil.ashraf@gmail.com',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.grey.shade800, fontSize: 16),
          ),
          /*third portion end here*/
          SizedBox(height: 25,),
          /*four portion start here*/
          SizedBox(width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF6F35A5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: (){},
              child: Text('Edit Profile',
                style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white,fontSize: 16),
              ),
            ),
          ),
          /*four portion end here*/
          const SizedBox(height: 25,),
          /*five portion start here*/
          Divider(
            color: Colors.grey.shade400,
            thickness: 1,
          ),
          /*five portion end here*/
          SizedBox(height: 25,),
          /*six portion start here*/
          ProfileMenuWidget(text: 'Settings', icon: LineAwesomeIcons.cog, press: (){},),
          /*six portion end here*/
          /*seven portion start here*/
          ProfileMenuWidget(text: 'Billing Details', icon: LineAwesomeIcons.wallet, press: (){},),
          /*seven portion end here*/
/*eight portion start here*/
          ProfileMenuWidget(text: 'User Managment', icon: LineAwesomeIcons.user_check, press: (){},),
          /*eight portion end here*/
          Divider(
            color: Colors.grey.shade400,
            thickness: 0.5,
          ),
          const SizedBox(height: 15,),
          /*nine portion start here*/
          ProfileMenuWidget(text: 'Help & Support', icon: LineAwesomeIcons.question_circle, press: (){},),
          /*nine portion end here*/
          /*ten portion start here*/
          ProfileMenuWidget(text: 'Private Policy', icon: LineAwesomeIcons.lock, press: (){},),
          /*ten portion end here*/
          /*last portion start here*/
          ProfileMenuWidget(text: 'Log Out', icon: LineAwesomeIcons.alternate_sign_out, press: (){},endicon: false,
          color: Colors.red,
          ),
          /*last portion end here*/

        ],),
      ),
    ),
      ),
    );
  }
}
/*ProfileMenuWidget start here*/
class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({super.key,required this.text,required this.icon,this.endicon=true,
    required this.press,this.color,
  });
final String text;
final IconData icon;
final VoidCallback press;
final bool endicon;
final Color? color;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: press,
      leading: Container(
        height: 40,
        width: 40,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
        ),
      child: Icon(icon,color: color ?? Colors.grey.shade800,size: 22,),
      ),
      title: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(color: color, fontSize: 18),
      ),
    trailing: endicon?Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(100),
      ),
   
   child: const Icon(LineAwesomeIcons.angle_right,
     color: Colors.black,
     size: 16,
   ), ):null

    );
  }
}
/*ProfileMenuWidget end here*/
