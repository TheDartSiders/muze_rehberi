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
      backgroundColor: Color(0xFFD2D9E2),
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
    for(int i = 0; i <18; i++){
      var muzeAdi = Strings.MUZE_ISIM[i];
      var muzeDetay = Strings.MUZE_GENEL_OZELLIKLER[i];
      var muzeIcon = Strings.MUZE_TUR[0]+'.png';
      var muzeResim = "${i+1}"+Strings.MUZE_FOTO[i]+'.png';
      Muze eklenecekMuze=Muze(muzeAdi,muzeDetay,muzeResim,muzeIcon);
      gecici.add(eklenecekMuze);
    }
    for(int i = 18; i <23; i++){
      var muzeAdi = Strings.MUZE_ISIM[i];
      var muzeDetay = Strings.MUZE_GENEL_OZELLIKLER[i];
      var muzeIcon = Strings.MUZE_TUR[1]+'.png';
      var muzeResim = "${i+1}"+Strings.MUZE_FOTO[i]+'.png';
      Muze eklenecekMuze=Muze(muzeAdi,muzeDetay,muzeResim,muzeIcon);
      gecici.add(eklenecekMuze);
    }
    for(int i = 23; i <24; i++){
      var muzeAdi = Strings.MUZE_ISIM[i];
      var muzeDetay = Strings.MUZE_GENEL_OZELLIKLER[i];
      var muzeIcon = Strings.MUZE_TUR[2]+'.png';
      var muzeResim = "${i+1}"+Strings.MUZE_FOTO[i]+'.png';
      Muze eklenecekMuze=Muze(muzeAdi,muzeDetay,muzeResim,muzeIcon);
      gecici.add(eklenecekMuze);
    }
    for(int i = 24; i <34; i++){
      var muzeAdi = Strings.MUZE_ISIM[i];
      var muzeDetay = Strings.MUZE_GENEL_OZELLIKLER[i];
      var muzeIcon = Strings.MUZE_TUR[3]+'.png';
      var muzeResim = "${i+1}"+Strings.MUZE_FOTO[i]+'.png';
      Muze eklenecekMuze=Muze(muzeAdi,muzeDetay,muzeResim,muzeIcon);
      gecici.add(eklenecekMuze);
    }
    for(int i = 34; i <36; i++){
      var muzeAdi = Strings.MUZE_ISIM[i];
      var muzeDetay = Strings.MUZE_GENEL_OZELLIKLER[i];
      var muzeIcon = Strings.MUZE_TUR[4]+'.png';
      var muzeResim = "${i+1}"+Strings.MUZE_FOTO[i]+'.png';
      Muze eklenecekMuze=Muze(muzeAdi,muzeDetay,muzeResim,muzeIcon);
      gecici.add(eklenecekMuze);
    }
    for(int i = 36; i <41; i++){
      var muzeAdi = Strings.MUZE_ISIM[i];
      var muzeDetay = Strings.MUZE_GENEL_OZELLIKLER[i];
      var muzeIcon = Strings.MUZE_TUR[5]+'.png';
      var muzeResim = "${i+1}"+Strings.MUZE_FOTO[i]+'.png';
      Muze eklenecekMuze=Muze(muzeAdi,muzeDetay,muzeResim,muzeIcon);
      gecici.add(eklenecekMuze);
    }
    for(int i = 41; i <45; i++){
      var muzeAdi = Strings.MUZE_ISIM[i];
      var muzeDetay = Strings.MUZE_GENEL_OZELLIKLER[i];
      var muzeIcon = Strings.MUZE_TUR[6]+'.png';
      var muzeResim = "${i+1}"+Strings.MUZE_FOTO[i]+'.png';
      Muze eklenecekMuze=Muze(muzeAdi,muzeDetay,muzeResim,muzeIcon);
      gecici.add(eklenecekMuze);
    }
    for(int i = 45; i <47; i++){
      var muzeAdi = Strings.MUZE_ISIM[i];
      var muzeDetay = Strings.MUZE_GENEL_OZELLIKLER[i];
      var muzeIcon = Strings.MUZE_TUR[7]+'.png';
      var muzeResim = "${i+1}"+Strings.MUZE_FOTO[i]+'.png';
      Muze eklenecekMuze=Muze(muzeAdi,muzeDetay,muzeResim,muzeIcon);
      gecici.add(eklenecekMuze);
    }

    return gecici;
  }
}
