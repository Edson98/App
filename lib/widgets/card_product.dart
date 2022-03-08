import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return Center(
      child: Container(
        width: 170.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: .3, // cantidad del ancho de la caja con respecto al objeto
              blurRadius: 5.0, // difuminado
              offset: const Offset(0.0, 1.0)
            )
          ]
        ),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://media.istockphoto.com/photos/cup-of-cafe-latte-with-coffee-beans-and-cinnamon-sticks-picture-id505168330?b=1&k=20&m=505168330&s=170667a&w=0&h=jJTePtpYZLR3M2OULX5yoARW7deTuAUlwpAoS4OriJg='
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Positioned(
                  top: 10.0,
                  right: 10.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color:  const Color.fromARGB(255, 231, 176, 105).withOpacity(.8),
                      borderRadius: const BorderRadius.all(Radius.circular(5.0))
                    ),
                    width: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.star, color: Colors.white),
                        Text('4,5', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 5.0),
                    Text('Cappaccino', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('without sugar', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 5.0),
                    Text('\$5.12', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                  ]
                ),
                const Spacer(),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF00512D),
                    shape: BoxShape.circle
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add),
                    color: Colors.white,
                   // highlightColor: Color(0xFF00512D),
                    onPressed: () {}
                  ),
                )
              ],               
            )
          ],
        ),
      ),
    );
  }
}