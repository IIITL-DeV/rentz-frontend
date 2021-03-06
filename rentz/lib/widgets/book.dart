import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final id;
  final amount;
  Book(this.id, this.amount);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                amount.toString(),
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87),
              ),
              ElevatedButton(
                onPressed: () {
                  print(id);
                },
                child: Text("BOOK NOW"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).primaryColor),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(32, 8, 32, 8)),
                  elevation: MaterialStateProperty.all(0),
                  // padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
