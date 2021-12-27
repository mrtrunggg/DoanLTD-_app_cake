import 'package:flutter/material.dart';


class category extends StatelessWidget {
  const category({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[           
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.brown.shade200)
          ),
          child: Text("Bánh ngọt",
          style: TextStyle(color: Colors.white),
          ),
          onPressed: () {}
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.brown.shade200)
          ),
          child: Text("Bánh mì",
          style: TextStyle(color: Colors.white),
          ),
          onPressed: () {}
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.brown.shade200)
          ),
          child: Text("Bánh mì mặn",
          style: TextStyle(color: Colors.white),
          ),
          onPressed: () {}
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.brown.shade200)
          ),
          child: Text("Bánh kem",
          style: TextStyle(color: Colors.white),
          ),
          onPressed: () {}
        ),          
      ],


    );
  }
}