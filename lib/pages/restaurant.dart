import 'package:flutter/material.dart';


class Restaurant extends StatefulWidget {
  const Restaurant({super.key});

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:  SafeArea(child:
        Padding(padding: EdgeInsets.symmetric(horizontal: 15.0),
          child:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Row(

              children: [ 
                Icon(Icons.card_giftcard,
               size: 35,
               color: Colors.green,),
 // Pousse les icon a léxtremite , en definssant le adding en haut cela permet au icon de n pas se coller aux extreme
                Spacer(),
                Icon(Icons.search,
                  size: 35,
                  color: Colors.green,),
                SizedBox(width: 15,),
                Icon(Icons.notification_add,
                  size: 35,
                  color: Colors.green,)
                  ] ,
              ),
          SizedBox(
            height: 50,),
          Stack(
              children: [
          Container(
            height: 200,
            width: 450,
            decoration: BoxDecoration(
              color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20)
                ),
                image: DecorationImage(image:
            AssetImage('assets/images/restaurant_image.jpg'),
            fit: BoxFit.cover,
                  
          )
            ),
          ),

          Positioned(
             top: 110,
              bottom: 30,
              left: 5,
              child:
          Container(
              height: 100 ,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20)
                ),

              ),
             )
          ),
            Positioned(
                top: 30,
                left: 10,
                child:
                    Column(
                      children: [
            Text("Bienvenue chez DEGUSTO",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
                             ),
                   ),
                        Text(" 25% reduction all Products",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
            ]
          )
            )

         ]
          ),
          SizedBox(height: 10,),
          Column(

              children: [

                  Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18,

              ),
              ),
              Text("See All",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                  fontSize: 18,

                ),
              ),

            ],
          ),
                 SizedBox(height: 27,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _BuildIcon(Icons.facebook, "burger"),
                    _BuildIcon(Icons.card_giftcard, "burger"),
                    _BuildIcon(Icons.card_giftcard, "burger"),
                    _BuildIcon(Icons.facebook, "burger"),
                  ],
                ),
            ],

          ),

        SizedBox(height: 20,),
        Text("Top Restaurant",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold ,
          ),
        ), 


          Expanded(
            child:
          ListView(
              scrollDirection: Axis.horizontal,
              children: [
          Row(
            children: [
          Image.asset('assets/images/restaurant_image.jpg', height: 200),
          SizedBox(width: 10,),
          Image.asset('assets/images/restaurant_image.jpg', height: 200),
              SizedBox(width: 10,),
          Image.asset('assets/images/restaurant_image.jpg', height: 200),
          ],
          ),
            ]
          ))

        ],

      ),
      )
      )
    );
  }
}





























Widget _BuildIcon(IconData icon, String label){
  return Column(
    mainAxisSize: MainAxisSize.min,
     children: [
       Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
           boxShadow: [BoxShadow(color:
           Colors.blue.withOpacity(0.5),
            )
           ]
         ),
         child: Icon(icon, size: 45,
           color: Colors.blueAccent,),
       ),
       const SizedBox(height: 8),
       Text(
           label, style:
       const TextStyle(
           fontWeight: FontWeight.bold
       )
       ),


     ],

  );
}