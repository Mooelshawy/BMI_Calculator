


import 'package:flutter/material.dart';
  
class ButtonShapeContent extends StatelessWidget {
   ButtonShapeContent({
    required  this.buttonIcon , 
    
  });


IconData buttonIcon ; 


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10 ,
        right: 10
      ),
      child: FloatingActionButton(
        onPressed: (){} ,

        child: Icon(
          buttonIcon,
            color: Colors.white,
            size: 40,
            opticalSize: 5.0,
            weight: 15),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
