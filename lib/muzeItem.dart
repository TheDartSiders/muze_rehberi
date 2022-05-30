import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'muze.dart';
import 'muzeDetay.dart';

class muzeItem extends StatelessWidget {
  final Muze listelenenMuze;
  const muzeItem({required this.listelenenMuze,Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
          elevation: 13,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MuzeDetay(secilenMuze: listelenenMuze),),);
              },
              leading: Image.asset("images/"+listelenenMuze.muzeIcon,),
              title: Text(listelenenMuze.muzeAdi, style: myTextStyle.headline5,),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          )
      ),
    );
  }
}
