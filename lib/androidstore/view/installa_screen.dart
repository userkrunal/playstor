import 'package:flutter/material.dart';
import 'package:playstor/androidstore/provider/store_provider.dart';
import 'package:provider/provider.dart';

class InstalledScreen extends StatefulWidget {
  const InstalledScreen({Key? key}) : super(key: key);

  @override
  State<InstalledScreen> createState() => _InstalledScreenState();
}

class _InstalledScreenState extends State<InstalledScreen> {
  PlayStoreProvider? providerF;
  PlayStoreProvider? providerT;
  @override
  Widget build(BuildContext context) {
    int index =ModalRoute.of(context)!.settings.arguments as int;
    providerF=Provider.of<PlayStoreProvider>(context,listen: false);
    providerT=Provider.of<PlayStoreProvider>(context,listen: true);
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 15),
              Icon(Icons.arrow_back,color: Colors.white54),
              SizedBox(width: 230),
              Icon(Icons.search,color: Colors.white54),
              SizedBox(width: 50),
              Icon(Icons.more_vert_outlined,color: Colors.white54)
            ],
          ),
          SizedBox(height: 20),
          ListTile(
            title:
                Row(mainAxisAlignment: MainAxisAlignment.start,children: [Text("${providerF!.topList[index].name}",style: TextStyle(fontSize: 25,color: Colors.white70)),
                  SizedBox(height: 5),
                  Text("\n\n${providerF!.topList[index].catg}",style: TextStyle(fontSize: 15,color: Colors.white54))
                ]),
            leading: Container(
              height:60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("${providerF!.topList[index].img}"),fit: BoxFit.cover,
                )
              ),
            ),
          )
        ],
      ),
    ));
  }
}
