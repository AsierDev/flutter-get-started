import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepOrangeAccent,
            padding: EdgeInsets.only(top: 30.0, left: 10.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('Margherita',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 30.0,
                              decoration: TextDecoration.none,
                              fontFamily: 'Oxygen',
                              fontWeight: FontWeight.w500,
                              color: Colors.lightBlue)),
                    ),
                    Expanded(
                      child: Text('Tomato, Mozzarella, Basil',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              decoration: TextDecoration.none,
                              fontFamily: 'Oxygen',
                              fontWeight: FontWeight.normal,
                              color: Colors.lightBlue)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text('Marinara',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 30.0,
                              decoration: TextDecoration.none,
                              fontFamily: 'Oxygen',
                              fontWeight: FontWeight.w500,
                              color: Colors.lightBlue)),
                    ),
                    Expanded(
                      child: Text('Tomato, Garlic',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              decoration: TextDecoration.none,
                              fontFamily: 'Oxygen',
                              fontWeight: FontWeight.normal,
                              color: Colors.lightBlue)),
                    )
                  ],
                ),
                PizzaImagesWidget(),
                OrderButton()
              ],
            )));
  }
}

class PizzaImagesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza1.png');
    Image image = Image(image: pizzaAsset, width: 300.0, height: 300.0);
    return Container(child: image, margin: EdgeInsets.only(top: 100.0));
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 5.0),
      child: RaisedButton(
        child: Text('Order your Pizza!'),
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
        title: Text('Order Completed!'),
        content: Text('Tahnks for your order!'));
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
