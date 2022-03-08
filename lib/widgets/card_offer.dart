import 'package:flutter/material.dart';

class CardOffer extends StatefulWidget {
  CardOffer({Key? key}) : super(key: key);

  @override
  State<CardOffer> createState() => _CardOfferState();
}

class _CardOfferState extends State<CardOffer> {
  @override
  Widget build(BuildContext context) {
    return Container(      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: .3, 
            blurRadius: 5.0, 
            offset:    Offset(0.0, 1.0)
          )
        ]
      ),
      height: 140.0,
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            width: 140.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1521495037281-9487183110ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNhcHB1Y2lub3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
                ),
                fit: BoxFit.cover
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Flexible(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color:  Colors.orangeAccent.withOpacity(.5),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0))
                  ),
                  padding: const EdgeInsets.symmetric(horizontal:12.0, vertical:5.0),                
                  child: const Text('Discover',
                    style: TextStyle(color: Colors.white, fontSize: 16))
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Get three cups of tea for free when you register',
                  maxLines: 2,// free when you register.
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),                
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}