import 'package:flutter/material.dart';
import 'package:playstor/androidstore/provider/store_provider.dart';
import 'package:provider/provider.dart';

class ForYouScreen extends StatefulWidget {
  const ForYouScreen({Key? key}) : super(key: key);

  @override
  State<ForYouScreen> createState() => _ForYouScreenState();
}

class _ForYouScreenState extends State<ForYouScreen> {
  PlayStoreProvider? providerF;
  PlayStoreProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<PlayStoreProvider>(context,listen: false);
    providerT=Provider.of<PlayStoreProvider>(context,listen: true);
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          ListTile(
            //style:ListTileStyle.list,
            title: Text("Recommended for you",style: TextStyle(fontSize: 18,color: Colors.grey.shade500)),
            trailing:  Icon(Icons.arrow_forward,color: Colors.grey.shade500),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) => Container(
              height: 90,
              width: 220,
              color: Colors.black87,
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Container(height: 120,width: 200,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("${providerF!.playList[index].path}"),fit: BoxFit.fill
                        )
                    ),
                  ),
                  ListTile(
                    title: Column(
                      children: [
                        SizedBox(height: 5),
                        Text("${providerF!.playList[index].name}",style: TextStyle(fontSize: 15,color: Colors.white70)),
                        Text("${providerF!.playList[index].catg}",style: TextStyle(fontSize: 13,color: Colors.white54)),
                        Text("${providerF!.playList[index].reting}      ${providerF!.playList[index].sp}",style: TextStyle(fontSize: 13,color: Colors.white54)),
                      ],
                    ),
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage("${providerF!.playList[index].img}"),fit: BoxFit.cover)
                      ),
                    ),
                  )
                ],
              ),
            ),itemCount: providerF!.playList.length,scrollDirection: Axis.horizontal),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) =>Container(
              height: 140,
              width: 130,
              color: Colors.black87,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage("${providerF!.gamesList[index].path}"),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("${providerF!.gamesList[index].name}",style: TextStyle(fontSize: 15,color: Colors.white70)),
                  SizedBox(height: 5),
                  Text("${providerF!.gamesList[index].reting}    ${providerF!.gamesList[index].sp}",style: TextStyle(fontSize: 13,color: Colors.white54)),
                ],
              ),
            ),
            itemCount: providerF!.gamesList.length,scrollDirection: Axis.horizontal),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) =>Container(
              height: 140,
              width: 130,
              color: Colors.black87,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage("${providerF!.gList[index].path}"),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("${providerF!.gList[index].name}",style: TextStyle(fontSize: 15,color: Colors.white70)),
                  SizedBox(height: 5),
                  Text("${providerF!.gList[index].reting}    ${providerF!.gList[index].sp}",style: TextStyle(fontSize: 13,color: Colors.white54)),
                ],
              ),
            ),
            itemCount: providerF!.gamesList.length,scrollDirection: Axis.horizontal),
          ),
        ],
      ),
    );
  }
}
