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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [Text("${providerF!.topList[index].name}",style: TextStyle(fontSize: 25,color: Colors.white70)),
                      SizedBox(height: 5),
                    ]),
                    SizedBox(height: 3),
                    Text("${providerF!.topList[index].catg}",style: TextStyle(fontSize: 15,color: Colors.white54))
                  ],
                ),
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
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("${providerF!.topList[index].reting}\n95K reviews",style: TextStyle(fontSize: 17,color: Colors.white54)),
                Divider(height: 5,thickness: 2,color: Colors.white70),
                Text("5M+\nDownloads",style: TextStyle(fontSize: 17,color: Colors.white54)),
                Divider(height: 5,thickness: 2,color: Colors.white70),
                Text("E\nEveryone",style: TextStyle(fontSize: 17,color: Colors.white54)),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 40,
            width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.green.shade700
            ),
            child: Center(child: Text("Install",style: TextStyle(color: Colors.white,fontSize: 20))),
          )
        ],
      ),
    ));
  }
}
