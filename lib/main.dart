import 'package:flutter/material.dart';

void main() => runApp(FirstScreen());

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstScreenState();
  }
}

//class CreditCard {
//  CreditCard(this.cardNumber, this.cardHolderName);
//
//  String cardNumber;
//  String cardHolderName;
//}

class FirstScreenState extends State {
  var cardHolderName = "";
  List<String> listCard = List<String>();
  var clearTextField = TextEditingController();

  handleHolderName(text) {
    setState(() {
      this.cardHolderName = text;
    });
    print(this.cardHolderName);
  }

  addCard() {
    setState(() {
      this.listCard.add(cardHolderName);
    });
    clearTextField.clear();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Credit Card"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              margin: const EdgeInsets.only(left: 16, top: 16, right: 16),
              child: Card(
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                elevation: 7.0,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      margin:
                      const EdgeInsets.only(left: 16, top: 16, right: 16),
                      child: TextField(
                        controller: clearTextField,
                        onChanged: handleHolderName,
                        decoration:
                        InputDecoration.collapsed(hintText: "Holder Name"),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      margin:
                      const EdgeInsets.only(left: 16, top: 16, right: 16),
                      child: TextField(
                        controller: clearTextField,
                        onChanged: handleHolderName,
                        decoration:
                        InputDecoration.collapsed(hintText: "Card Number"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(200)),
              ),
              elevation: 7.0,
              child: IconButton(
                icon: Icon(Icons.add_circle_outline),
                color: Colors.white,
                tooltip: 'send',
                onPressed: addCard,
              ),
            ),
            Expanded(
                child: ListView.builder(
                  itemCount: listCard.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      margin: const EdgeInsets.only(
                          left: 16, top: 16, right: 16),
                      height: 380,
                      child: Card(
                        color: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        elevation: 7.0,
                        child: Column(
                            children: <Widget>[
                        Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        margin: const EdgeInsets.only(
                            left: 16, top: 16, right: 16),
                        child: Text(listCard[index]),
                      ),
                      Image(image: AssetImage('assets/images/final.png'))
//                            Container(
//                              padding: const EdgeInsets.symmetric(vertical: 8.0),
//                              margin: const EdgeInsets.only(
//                                  left: 16, top: 16, right: 16),
//                              child: Text(listCard[index]),
//                        ),
                        ],
                      ),
                    ),);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
