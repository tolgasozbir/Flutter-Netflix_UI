import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui/data/assets.dart';
import 'package:flutter_netflix_ui/widgets/navBar.dart';

class CustomAppBar extends StatefulWidget {

  final Widget body;

  CustomAppBar({required this.body, Key? key,}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    double screenWidth(double value)=> MediaQuery.of(context).size.width*value;
    // ignore: unused_element
    double screenHeight(double value) => MediaQuery.of(context).size.height*value;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context,innerBoxIsScrolled)=>[
          SliverAppBar(
            backgroundColor: Colors.black54,
            pinned: true,
            floating: true,
            leading: Image.asset(Assets.netflixLogo0),
            centerTitle: true,
            title: Text("Netflix", style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.red,fontWeight: FontWeight.w700),),
            actions: [
              Icon(Icons.search,size: screenWidth(0.075),color: Colors.white,),
              SizedBox(width: 12,),
              Image.asset(Assets.userIcon, width: screenWidth(0.075),),
              SizedBox(width: 12,),
            ],
            bottom: Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Series",style: const TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500,)),
                  Text("Movies",style: const TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500,)),
                  Row(
                    children: [
                      Text("Categories",style: const TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500,)),
                      Icon(Icons.arrow_drop_down_outlined,color: Colors.white,),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
        body: widget.body,
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}

