import 'package:calculator/util/hexcolor.dart';
import 'package:flutter/material.dart';

class BillSplitter extends StatefulWidget {
  @override
  _BillSplitterState createState() => _BillSplitterState();
}

class _BillSplitterState extends State<BillSplitter> {
  int _tipPercentage = 0;
  int _personCounter = 1;
  double _billAmount = 0.0;

  Color _purple = HexColor("#6908D6");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20.5),
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: _purple.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12.0)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text("Total Per Person"), Text(" \$123")],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                      color: Colors.blueGrey.shade100,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(12.0)),
              child: Column(
                children: <Widget>[
                  TextField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: _purple),
                    decoration: InputDecoration(
                        prefixText: "Bill Amount",
                        prefixIcon: Icon(Icons.attach_money)),
                    onChanged: (String value) {
                      try {
                        _billAmount = double.parse(value);
                      } catch (e) {
                        _billAmount = 0.0;
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
