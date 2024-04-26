import 'package:flutter/material.dart';

class NavigBar extends StatelessWidget {
  const NavigBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(  
      builder: (context, constraints) {
        if (constraints.maxWidth > 1400) {
          return const DesktopNavigBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1400) {
          return const DesktopNavigBar();
        } else {
          return const MobileNavigBar();
        }
      },
    );
  }
}

class DesktopNavigBar extends StatelessWidget {
  const DesktopNavigBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text('Kwartz INC',
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MrsSaintDelafield')),
            Row(
              children: <Widget>[
                const Text('Home',
                    style: TextStyle(
                        fontSize: 26.0,
                        color: Colors.white,
                        fontFamily: 'AveraSansLibre')),
                const SizedBox(
                  width: 30.0,
                ),
                const Text('About Us',
                    style: TextStyle(
                        fontSize: 26.0,
                        color: Colors.white,
                        fontFamily: 'Corben')),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'Projects',
                  style: TextStyle(
                      fontSize: 26.0,
                      color: Colors.white,
                      fontFamily: 'Corben'),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                MaterialButton(
                  color: const Color.fromARGB(146, 0, 150, 130),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontFamily: 'Corben'),
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

class MobileNavigBar extends StatelessWidget {
  const MobileNavigBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
      child: Container(
          child:const Column(
        children: <Widget>[
           Text(
            'Kwartz INC',
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'MrsSaintDelafield'),
          ),
         
          Padding(
            padding: EdgeInsets.all(9.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Text(
                  'Home',
                  style: TextStyle(
                      fontSize: 26.0,
                      color: Colors.white,
                      fontFamily: 'AveraSansLibre'),
                ),
                 SizedBox(
                  width: 30.0,
                ),
                 Text(
                  'About Us',
                  style: TextStyle(
                      fontSize: 26.0, color: Colors.white, fontFamily: 'Corben'),
                ),
                 SizedBox(
                  width: 30.0,
                ),
                 Text(
                  'Projects',
                  style: TextStyle(
                      fontSize: 26.0, color: Colors.white, fontFamily: 'Corben',),
              ),
                
               ],
            ),
          )
        ],
      )
      ),
    );
  }
}
