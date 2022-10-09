import 'package:burclar/burc_detay.dart';
import 'package:burclar/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listenenBurclar;
  const BurcItem({super.key, required this.listenenBurclar});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return BurcDetay(secilenBurc: listenenBurclar);
              }));
            },
            leading: Image.asset("images/" + listenenBurclar.burcKucukResim),
            title: Text(
              listenenBurclar.burcAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              listenenBurclar.burcTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}
