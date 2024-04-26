import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

List <Widget> pageMaterials(double width){
  return <Widget>[
     Container(
      width: width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
      const Padding(
         padding: EdgeInsets.symmetric(vertical: 20.0),
         child: Text('Real Estate \nDevelopers',
          style: TextStyle(color:Colors.white,fontSize:40.0,fontWeight: FontWeight.bold,fontFamily: 'Corben', ),
          ),
       ),
       const SizedBox(height: 5.0,),
        
      const  Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text('Turning dreams into reality,welcome to where zeal drives success and where experience is flawless.',
          style : TextStyle(color:Colors.white,fontSize: 15.0,
          fontWeight:FontWeight.normal ),
          ),
        ),
      MaterialButton(
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(9.0),
                    ),
                  ),
                  onPressed: (){},
                  child:const Padding(
                    padding: EdgeInsets.symmetric(vertical:20.0, horizontal:45.0),
                    child: Text(
                      'Package Information',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.teal,
                          fontFamily: 'Corben'),
                    ),
                  ),
                ),
      ],
    ),
    
   ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical:29.0),
      child: Image.asset('assets/istockphoto.jpg',
      width: width,
      ),
    )
  ];
}
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(  
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:pageMaterials(constraints.biggest.width/2),
          );
        }
        else {
          return Column(
            children: pageMaterials(constraints.biggest.width),
          );
        }
      },
    );
  }
}