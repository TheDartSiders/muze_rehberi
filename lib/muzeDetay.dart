import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import 'muze.dart';

class MuzeDetay extends StatefulWidget {
  final Muze secilenMuze;
  const MuzeDetay({required this.secilenMuze,Key? key}) : super(key: key);

  @override
  State<MuzeDetay> createState() => _MuzeDetayState();
}

class _MuzeDetayState extends State<MuzeDetay> {

  Color appbarRengi = Color(0xffb74093);
  late PaletteGenerator _generator;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appbarRenginiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        primary: true,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              pinned: true,

              backgroundColor: appbarRengi,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset('images/'+widget.secilenMuze.muzeResim,fit: BoxFit.cover,),
                title: Text(widget.secilenMuze.muzeAdi),
                centerTitle: true,

              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(child: Text(widget.secilenMuze.muzeAciklama,style: Theme.of(context).textTheme.bodyText1 ,),),

              ),
            )
          ],
        )
    );
  }

  void appbarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(AssetImage('images/${widget.secilenMuze.muzeResim}'));
    setState(() {

    });
    appbarRengi = _generator.dominantColor!.color;
  }
}
