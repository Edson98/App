import 'package:coffee_shop/widgets/card_offer.dart';
import 'package:coffee_shop/widgets/card_product.dart';
import 'package:coffee_shop/widgets/category_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal:10.0, vertical:15.0),        
          children: [
            homeAppBar(),
            // Saludo
            const SizedBox(height: 15.0),
            const Text(
              'Good Morning, David',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 24
              )
            ),
            const SizedBox(height: 15.0),  
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 240, 240, 240),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 24,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: const Color(0xFFCF9F69),
                    child: SvgPicture.asset(
                    'assets/filter.svg',
                      height: 24,
                      color: Colors.white,
                    ),
                  ),
                ),            
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none
                  )
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            // Categories
            const Text(
              'Categories',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24
              )
            ),
            const SizedBox(height: 15.0),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Wrap(              
                direction: Axis.horizontal,            
                spacing: 10.0,
                children: [
                  CategoryButton(
                    "Cappacino",
                    icon: 'assets/coffee-svgrepo-com.svg',
                    isSelected: true,
                  ),
                  CategoryButton(
                    "Coca cola",
                    icon: 'assets/coffee-cup-coffee-svgrepo-com.svg',
                    isSelected:false,
                  ),     
                  CategoryButton(
                    "Express",
                    icon: 'assets/coffee-svgrepo-com.svg',
                    isSelected: false,
                  ),                        
                ],
              ),
            ),
            const SizedBox(height: 1.0),
            // Product list
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CardProduct(),
                  SizedBox(width: 10.0),
                  CardProduct(),
                  SizedBox(width: 10.0),
                  CardProduct()
                ],
              ),
            ),
            // Spaceial Offer
            const SizedBox(height: 5.0),
            const Text(
              'Special Offer',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24
              )
            ),
            const SizedBox(height: 25.0),
            CardOffer()
          ],
        ),
      ),
      bottomNavigationBar: homeNavigationBar()
    );
  }

  Widget homeAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1640915550677-26ade06905fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzN3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'
          ),
        ),
        Wrap(
          children: [
            Icon(
              Icons.location_on_sharp,
              color: Color(0xFF00512D),
            ),
            Text(
              'London, England',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF00512D)),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(
            'assets/bell-notification-svgrepo-com.svg',
            height: 32,
          )
        )
      ],
    );
  }
  AppBar homeAppBarV2() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        bottomOpacity: 0,      
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white
        ),  
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal:5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1640915550677-26ade06905fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzN3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on_sharp,
              color: Color(0xFF00512D),
            ),
            Text(
              'London, England',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10, horizontal: 10),
            child:  
              SvgPicture.asset(
                'assets/bell-notification-svgrepo-com.svg',
                height: 32,
              )
            ,)
        ],
      );
  }

  BottomNavigationBar homeNavigationBar() {
    return BottomNavigationBar(
      selectedItemColor:  const Color(0xFF00512D),
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/home-svgrepo-com.svg',
            color: const Color(0xFF00512D),
            height: 28
          ),
          label: 'Home'
        ),
          BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/favourite-svgrepo-com.svg',
            height: 28,
          ),
          label: 'Favourite'),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/bag-outline-svgrepo-com.svg',
            height: 28,
          ),
          label: 'Cart'),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/profile-svgrepo-com.svg',
            height: 28,
          ),
          label: 'Profile'),
      ],
    );
  }
}