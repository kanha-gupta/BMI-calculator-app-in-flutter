import 'package:flutter/material.dart';
void main(){
  runApp(mymainapp());
}
class mymainapp extends StatelessWidget {
  //const mymainapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
      ),
      home: structure(),
    );
  }
}
class structure extends StatefulWidget {
  //const structure({Key? key}) : super(key: key);

  @override
  _structureState createState() => _structureState();
}

class _structureState extends State<structure> {
  final TextEditingController  _height=TextEditingController();
  final TextEditingController  _weight=TextEditingController();
   double _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _height,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'height in cm',
                icon: Icon(Icons.trending_up),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _weight,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'weight in kg',
                icon: Icon(Icons.line_weight),
              ),
            ),
            SizedBox(height: 15),
            RaisedButton(
              color: Colors.lightBlueAccent,
              child: Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: bmical,
            ),
            SizedBox(height: 15),
            Text(
              _result == null ? "Enter Value" : "${_result.toStringAsFixed(2)}",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );

  }
  void bmical(){
    double height = double.parse(_height.text) / 100;
    double weight=double.parse(_weight.text);
     double heightsquare = height*height;
     double result=weight/heightsquare;
     _result=result;

     setState(() {});
  }

}



