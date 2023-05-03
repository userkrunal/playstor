import 'package:flutter/widgets.dart';
import 'package:playstor/androidstore/model/play_model.dart';

class PlayStoreProvider extends ChangeNotifier
{
  List allList=[
    PlayModel(name:"Subway Sufers",path: "assets/images/img.png",img: "assets/images/img_1.png" ,sp: "116 MB",catg: "SYBO Games",reting: "4.4 ⭐"),
    PlayModel(name:"CarX Highway",path: "assets/images/img_2.png",img: "assets/images/img_3.png" ,sp: "618 MB",catg: "Racing car",reting: "4.6 ⭐"),
    PlayModel(name:"8 Ball Pool",path: "assets/images/img_4.png",img: "assets/images/img_5.png" ,sp: "87 MB",catg: "Pool",reting: "4.3 ⭐"),
    PlayModel(name:"Lord Mobile",path: "assets/images/img_6.png",img: "assets/images/img_7.png" ,sp: "383 MB",catg: "Strategy",reting: "4.1 ⭐"),
    PlayModel(name:"Cricket League",path: "assets/images/img_8.png",img: "assets/images/img_9.png" ,sp: "68 MB",catg: "Sports",reting: "4.2 ⭐"),
    PlayModel(name:"Hill Climb ",path: "assets/images/img_10.png",img: "assets/images/img_11.png" ,sp: "78 MB",catg: "Racing",reting: "4.2 ⭐"),
    PlayModel(name:"Mini Militia-War ",path: "assets/images/img_12.png",img: "assets/images/img_13.png" ,sp: "40 MB",catg: "Action",reting: "4.2 ⭐"),
    PlayModel(name: "Candy Crush",path: "assets/images/img_14.png",sp: "90 MB",reting: "4.4 ⭐"),
    PlayModel(name: "Clash of Clans",path: "assets/images/img_15.png",sp: "290 MB",reting: "4.5 ⭐"),
    PlayModel(name: "Ludo King",path: "assets/images/img_16.png",sp: "67 MB",reting: "4.2 ⭐"),
    PlayModel(name: "Wcc3",path: "assets/images/img_17.png",sp: "879 MB",reting: "4.1 ⭐"),
    PlayModel(name: "Angry Birds 2",path: "assets/images/img_18.png",sp: "245 MB",reting: "4.3 ⭐"),
    PlayModel(name: "Call of Duty",path: "assets/images/img_19.png",sp: "2.2 GB",reting: "4.2 ⭐"),
    PlayModel(name: "Free Fire Max",path: "assets/images/img_20.png",sp: "630 MB",reting: "4.2 ⭐"),
    PlayModel(name: "JioCinema",path: "assets/images/img_21.png",sp: "30 MB",catg: "Entertainment",reting:  "4.2 ⭐"),
    PlayModel(name: "Instagram",path: "assets/images/img_22.png",sp: " ☑️Installed",catg: "Social",reting:  "4.3 ⭐"),
    PlayModel(name: "Snapchart",path: "assets/images/img_23.png",sp: "61 MB",catg: "Communication",reting:  "4.1 ⭐"),
    PlayModel(name: "Hay Day",path: "assets/images/img_24.png",sp: "205 MB",catg: "Super",reting:  "4.3 ⭐"),
    PlayModel(name: "Pubg",path: "assets/images/img_25.png",sp: "1.4 GB",catg: "Super",reting:  "4.0 ⭐"),
    PlayModel(name: "Google Pay",path: "assets/images/img_26.png",sp: "40 MB",catg: "Payments",reting:  "4.4 ⭐"),
    PlayModel(name: "Amazon",path: "assets/images/img_27.png",sp: "44 MB",catg: "Shopping",reting:  "4.1 ⭐"),
    PlayModel(name: "Drem11",catg: "Sports",reting: "4.2 ⭐",sp: "49 MB",img: "assets/images/img_28.png"),
    PlayModel(name: "Ludo King",catg: "Multi-player",reting: "4.2 ⭐",sp: "67 MB",img: "assets/images/img_29.png"),
    PlayModel(name: "Candy Crush Sage",catg: "Puzzle",reting: "4.2 ⭐",sp: "90 MB",img: "assets/images/img_30.png"),
    PlayModel(name: "PhonePe UPI",catg: "Finance",reting: "4.2 ⭐",sp: "60 MB",img: "assets/images/img_31.png"),
    PlayModel(name: "Carrom Pool",catg: "Sports",reting: "4.2 ⭐",sp: "70 MB",img: "assets/images/img_32.png"),
    PlayModel(name: "Free Fire Max",catg: "Action",reting: "4.2 ⭐",sp: "630 MB",img: "assets/images/img_33.png"),
    PlayModel(name: "Temple Run 2",catg: "Action",reting: "4.2 ⭐",sp: "131 MB",img: "assets/images/img_34.png"),
    PlayModel(name: "Spotify:Music",catg: "Music & audio",reting: "4.3 ⭐",sp: "25 MB",img: "assets/images/img_35.png"),
    PlayModel(name: "Truecaller",catg: "Communication",reting: "4.3 ⭐",sp: "45 MB",img: "assets/images/img_36.png"),
    PlayModel(name: "Tata Neu-Shop",catg: "Shopping",reting: "4.3 ⭐",sp: "47 MB",img: "assets/images/img_37.png"),

  ];
  List playList=[
    PlayModel(name:"Subway Sufers",path: "assets/images/img.png",img: "assets/images/img_1.png" ,sp: "116 MB",catg: "SYBO Games",reting: "4.4 ⭐"),
    PlayModel(name:"CarX Highway",path: "assets/images/img_2.png",img: "assets/images/img_3.png" ,sp: "618 MB",catg: "Racing car",reting: "4.6 ⭐"),
    PlayModel(name:"8 Ball Pool",path: "assets/images/img_4.png",img: "assets/images/img_5.png" ,sp: "87 MB",catg: "Pool",reting: "4.3 ⭐"),
    PlayModel(name:"Lord Mobile",path: "assets/images/img_6.png",img: "assets/images/img_7.png" ,sp: "383 MB",catg: "Strategy",reting: "4.1 ⭐"),
    PlayModel(name:"Cricket League",path: "assets/images/img_8.png",img: "assets/images/img_9.png" ,sp: "68 MB",catg: "Sports",reting: "4.2 ⭐"),
    PlayModel(name:"Hill Climb ",path: "assets/images/img_10.png",img: "assets/images/img_11.png" ,sp: "78 MB",catg: "Racing",reting: "4.2 ⭐"),
    PlayModel(name:"Mini Militia-War ",path: "assets/images/img_12.png",img: "assets/images/img_13.png" ,sp: "40 MB",catg: "Action",reting: "4.2 ⭐"),
  ];
  List gamesList=[
    PlayModel(name: "Candy Crush",path: "assets/images/img_14.png",sp: "90 MB",reting: "4.4 ⭐"),
    PlayModel(name: "Clash of Clans",path: "assets/images/img_15.png",sp: "290 MB",reting: "4.5 ⭐"),
    PlayModel(name: "Ludo King",path: "assets/images/img_16.png",sp: "67 MB",reting: "4.2 ⭐"),
    PlayModel(name: "Wcc3",path: "assets/images/img_17.png",sp: "879 MB",reting: "4.1 ⭐"),
    PlayModel(name: "Angry Birds 2",path: "assets/images/img_18.png",sp: "245 MB",reting: "4.3 ⭐"),
    PlayModel(name: "Call of Duty",path: "assets/images/img_19.png",sp: "2.2 GB",reting: "4.2 ⭐"),
    PlayModel(name: "Free Fire Max",path: "assets/images/img_20.png",sp: "630 MB",reting: "4.2 ⭐"),
  ];
  List gList=[
    PlayModel(name: "JioCinema",path: "assets/images/img_21.png",sp: "30 MB",catg: "Entertainment",reting:  "4.2 ⭐"),
    PlayModel(name: "Instagram",path: "assets/images/img_22.png",sp: " ☑️Installed",catg: "Social",reting:  "4.3 ⭐"),
    PlayModel(name: "Snapchart",path: "assets/images/img_23.png",sp: "61 MB",catg: "Communication",reting:  "4.1 ⭐"),
    PlayModel(name: "Hay Day",path: "assets/images/img_24.png",sp: "205 MB",catg: "Super",reting:  "4.3 ⭐"),
    PlayModel(name: "Pubg",path: "assets/images/img_25.png",sp: "1.4 GB",catg: "Super",reting:  "4.0 ⭐"),
    PlayModel(name: "Google Pay",path: "assets/images/img_26.png",sp: "40 MB",catg: "Payments",reting:  "4.4 ⭐"),
    PlayModel(name: "Amazon",path: "assets/images/img_27.png",sp: "44 MB",catg: "Shopping",reting:  "4.1 ⭐"),

  ];
  List topList=[
    PlayModel(name: "Drem11",catg: "Sports",reting: "4.2 ⭐",sp: "49 MB",img: "assets/images/img_28.png"),
    PlayModel(name: "Ludo King",catg: "Multi-player",reting: "4.2 ⭐",sp: "67 MB",img: "assets/images/img_29.png"),
    PlayModel(name: "Candy Crush Sage",catg: "Puzzle",reting: "4.2 ⭐",sp: "90 MB",img: "assets/images/img_30.png"),
    PlayModel(name: "PhonePe UPI",catg: "Finance",reting: "4.2 ⭐",sp: "60 MB",img: "assets/images/img_31.png"),
    PlayModel(name: "Carrom Pool",catg: "Sports",reting: "4.2 ⭐",sp: "70 MB",img: "assets/images/img_32.png"),
    PlayModel(name: "Free Fire Max",catg: "Action",reting: "4.2 ⭐",sp: "630 MB",img: "assets/images/img_33.png"),
    PlayModel(name: "Temple Run 2",catg: "Action",reting: "4.2 ⭐",sp: "131 MB",img: "assets/images/img_34.png"),
    PlayModel(name: "Spotify:Music",catg: "Music & audio",reting: "4.3 ⭐",sp: "25 MB",img: "assets/images/img_35.png"),
    PlayModel(name: "Truecaller",catg: "Communication",reting: "4.3 ⭐",sp: "45 MB",img: "assets/images/img_36.png"),
    PlayModel(name: "Tata Neu-Shop",catg: "Shopping",reting: "4.3 ⭐",sp: "47 MB",img: "assets/images/img_37.png"),
  ];
}