import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int countlike = 0;
  void likescount() {
    setState(() {
      countlike++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook"),
        backgroundColor: Colors.blue,
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      child: _newsfeed(),
    );
  }

  Widget _newsfeed() {
    return Card(
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                child: Image.network(
                    'https://1000logos.net/wp-content/uploads/2016/11/Facebook-logo-500x350.png'),
              ),
              Row(
                children: <Widget>[
                  Text('Facebook App ', style: TextStyle(fontSize: 16)),
                  Icon(
                    Icons.check_circle,
                    color: Colors.blue,
                    size: 15,
                  ),
                  Text(
                    ' updated their cover photo',
                    style: TextStyle(color: Colors.black45, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Row(children: <Widget>[
              SizedBox(
                width: 60,
              ),
              Text('Dec 21 . '),
              Icon(
                Icons.public,
                size: 17,
              )
            ]),
          ),
          SizedBox(
            height: 10,
          ),
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
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/details");
            },
            child: Expanded(
              child: Image(
                image: AssetImage("assets/images/dog.png"),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.thumb_up_alt_outlined,
                color: Colors.blue,
              ),
              Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
              Text(
                '$countlike',
                style: TextStyle(color: Colors.black38),
              ),
              SizedBox(
                width: 170,
              ),
              Text(
                '10 Comments',
                style: TextStyle(color: Colors.black38),
              ),
              Text(
                '1 Shares',
                style: TextStyle(color: Colors.black38),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.thumb_up),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          likescount();
                        });
                      },
                      child: Text("Like"),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.chat_bubble),
                    FlatButton(
                      onPressed: null,
                      child: Text("Comment"),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_right),
                    FlatButton(
                      onPressed: null,
                      child: Text("Share"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
