import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_arayuz/strings.dart';

import 'muze.dart';
import 'muzeItem.dart';

class MuzeListesi extends StatelessWidget {
  late List<Muze> tumMuzeler;

  MuzeListesi(){
    tumMuzeler = veriKaynagiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Müze Rehberi'),backgroundColor: Color(0xFF06151E)),
      body: Center(
          child:ListView.builder(itemBuilder: (context, index){
            return muzeItem(listelenenMuze:tumMuzeler[index]);
          },
            itemCount: tumMuzeler.length,
          )
      ),
    );
  }

  List<Muze> veriKaynagiHazirla() {
    List<Muze> gecici = [];
    for(int i = 0; i <3; i++){
      var muzeAdi = Strings.MUZE_ISIM[i];
      var muzeDetay = Strings.MUZE_GENEL_OZELLIKLER[i];
      var muzeIcon = Strings.MUZE_TUR[0]+'.png';
      var muzeResim = "${i+1}"+Strings.MUZE_FOTO[i]+'.png';
      Muze eklenecekMuze=Muze(muzeAdi,muzeDetay,muzeResim,muzeIcon);
      gecici.add(eklenecekMuze);
    }
    return gecici;
  }
}
