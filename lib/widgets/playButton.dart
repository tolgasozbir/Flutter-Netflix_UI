import 'package:flutter/material.dart';

class playButton extends StatelessWidget {
  const playButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: (){}, 
      icon: Icon(Icons.play_arrow,size: 24,color: Colors.black,), 
      label: Text("Play",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
      style: ElevatedButton.styleFrom(primary: Colors.white),
    );
  }
}