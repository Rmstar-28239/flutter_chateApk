import 'package:flutter/material.dart';
import 'ChateShow.dart';
class ChateScreen extends StatefulWidget {
  const ChateScreen({Key? key}) : super(key: key);

  @override
  State<ChateScreen> createState() => _ChateScreenState();
}

class _ChateScreenState extends State<ChateScreen> {
  final TextEditingController msgcontrol=new TextEditingController();
  final List<ChateShow> _message= <ChateShow>[];
  void _handSumit(String text)
  {
    ChateShow chateShow=new ChateShow(
      text: text,
    );
    setState(() {
      _message.insert(0,chateShow);
    });
    msgcontrol.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(child: ListView.builder(
          padding: EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (BuildContext context, int index)
            {

              return _message[index];
            },
          itemCount: _message.length,

          // itemBuilder: ((context, index) => _message[index]),
          // itemCount:_message.length,
        ),
        ),
        Divider(height: 1.0,),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child:_textComposer(),
        ),
      ],
    );
  }
  Widget _textComposer()
  {
    return IconTheme(
      data: IconThemeData(
        color: Colors.blue,
      ),
      child: Container(
        margin:EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [

            Flexible(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Message",
                ),
                style: TextStyle(
                    color: Colors.black,
                    fontSize:18),

                autofocus: true,
                controller: msgcontrol,
                onSubmitted: _handSumit,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed:()=>_handSumit(msgcontrol.text),
              ),
            )
          ],
        ),
      ),
    );
  }
}
