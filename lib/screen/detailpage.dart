import 'package:flutter/material.dart';

class Detailpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String arg = ModalRoute.of(context).settings.arguments;
    print(arg);
    int num = int.parse(arg);
    print(num);

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
        backgroundColor: Colors.blue,
      ),
      body: _body(num),
    );
  }

  Widget _body(int num) {
    print(num);
    return ListView(
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: 'Pamper your Pooch. ',
            style: TextStyle(color: Colors.black, fontSize: 15),
            children: <TextSpan>[
              TextSpan(
                  text: 'The Bark Shoppe ',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 15)),
              TextSpan(
                text:
                    "is a pet car facility in New York offering grooming products and makeovers with your pet's individual needs in mind.Take a look and shop now to",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              TextSpan(
                text:
                    " #BuyBlack:https:/bit.ly/BarkShoppe #LiftBlackVoices #MoreTogether",
                style: TextStyle(color: Colors.blueAccent, fontSize: 15),
              ),
            ],
          ),
        ),
        Expanded(
          child: Image(
            image: AssetImage("assets/images/pic$num.png"),
          ),
        ),
      ],
    );
  }
}
