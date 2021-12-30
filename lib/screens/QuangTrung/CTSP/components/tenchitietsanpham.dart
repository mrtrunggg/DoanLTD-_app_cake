import 'package:flutter/material.dart';


class tenchitietsanpham extends StatelessWidget {
  const tenchitietsanpham({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(onPressed: () {},
          icon: const Icon(Icons.arrow_left,
          color: Colors.black,
          ),
        ),
        Text("Bánh mì không",
        style: TextStyle(color: Colors.black, fontSize: 20)
        )
      ],
    );
  }
}