import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 30.0, left: 10.0),
            color: Colors.deepOrangeAccent,
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Margherita',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300),
                  ),
                  Expanded(
                      child: Text(
                    'Tomato, Mozzarella, Bazil',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300),
                  ))
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Marinara',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300),
                  ),
                  Expanded(
                      child: Text(
                    'Tomato, Garlic',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 20.0,
                        decoration: TextDecoration.none,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w300),
                  ))
                ],
              ),
              PizzaImageWidget(),
              OrderButton(),
            ])));
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza.png');
    Image image = Image(
      image: pizzaAsset,
      width: 400.0,
      height: 400.0,
    );
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 5.0),
      child: RaisedButton(
          onPressed: () {
            order(context);
          },
          child: Text("Order your Pizza!"),
          elevation: 5.0,
          color: Colors.lightGreen),
    );
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) => alert,
    );
  }
}
