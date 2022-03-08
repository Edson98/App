import 'package:coffee_shop/views/home.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/wallpaper.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 1),
          Image.asset('assets/coffee.png', height: 250),
          const SizedBox(height: 15.0),
          const Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal:5.0),
              child: Text('Coffee so good,\nyour taste buds with love', 
                style: TextStyle(color: Colors.brown, decoration: TextDecoration.none, fontSize: 24.0, fontWeight: FontWeight.w900), 
                textAlign: TextAlign.center,           
                maxLines: 3,
              ),
            )
          ),
          const SizedBox(height: 15.0),
          const Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('The best grain, the fitnest roast, the most powerful flavor', 
                style: TextStyle(color: Colors.brown, decoration: TextDecoration.none, fontSize: 15.0), 
                textAlign: TextAlign.center,           
                maxLines: 3,
              ),
            ),
          ),
          // smooth_page_indicator 1.0.0+2 
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  primary: const Color(0xFF00512D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                  )
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context, 
                    MaterialPageRoute(builder: (context) => HomeView())
                  );
                }, 
                child: const Text('Get Started', style: TextStyle(fontSize: 18))
              ),
            ),
          )
        ],
      ),
    );
  }
}

/**
 return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/wallpaper.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            
          ],
        ),
      ),
    ); 
 
 */