import 'package:flutter/material.dart';
import 'package:playstor/androidstore/provider/store_provider.dart';
import 'package:provider/provider.dart';

class TopChartScreen extends StatefulWidget {
  const TopChartScreen({Key? key}) : super(key: key);

  @override
  State<TopChartScreen> createState() => _TopChartScreenState();
}

class _TopChartScreenState extends State<TopChartScreen> {
  PlayStoreProvider? providerF;
  PlayStoreProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<PlayStoreProvider>(context,listen: false);
    providerT=Provider.of<PlayStoreProvider>(context,listen: true);
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView.builder(itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'ins',arguments: index);
          },
          child: ListTile(
            title: Row(children: [Text("${providerF!.topList[index].name}",style: TextStyle(color: Colors.white70,fontSize: 18))]),
            leading: Container(height: 60,width: 60,decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage("${providerF!.topList[index].img}"),fit: BoxFit.cover)
            )),
            subtitle: Row(children: [Text("${providerF!.topList[index].reting}\n${providerF!.topList[index].sp}",style: TextStyle(color: Colors.white54,fontSize: 13),)],),
          ),
        ),
      ),itemCount: providerF!.topList.length),
    );
  }
}
