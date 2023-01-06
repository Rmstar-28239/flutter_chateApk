import 'package:flutter/material.dart';
const String _name="Rupesh";
class ChateShow extends StatelessWidget {
  final String? text;
  const ChateShow({Key? key,this.text}) : super(key: key);
  //ChateShow({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              child: Text(_name[0]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Text(_name,style: Theme.of(context).textTheme.headline6,),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Text('$text'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
