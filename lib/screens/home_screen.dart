import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui/data/assets.dart';
import 'package:flutter_netflix_ui/data/data.dart';
import 'package:flutter_netflix_ui/widgets/customAppBar.dart';
import 'package:flutter_netflix_ui/widgets/playButton.dart';
import 'package:flutter_netflix_ui/widgets/transparentEffectBanner.dart';
import 'package:flutter_netflix_ui/widgets/transparentEffectMovies.dart';
import 'package:flutter_netflix_ui/widgets/verticalIconButton.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double screenWidth(double value)=> MediaQuery.of(context).size.width*value;
  double screenHeight(double value) => MediaQuery.of(context).size.height*value;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(body: buildBody(),);
  }

  Widget buildBody() {
    return ListView(
      children: [
        bannerMovie(),
        sizedBoxSpace(),
        rowIconButtons(),
        sizedBoxSpace(),    
        top10Text(),
        top10List(),
        sizedBoxSpace(),   
        tvSeriesText(),
        tvSeriesList(),
        sizedBoxSpace(),
        moviesText(),
        moviesList(),
      ],
    );
  }

  Widget sizedBoxSpace() => SizedBox(height: screenHeight(0.03),);

  Widget bannerMovie() {
    return Container(
      height: screenHeight(0.7), 
      width: screenWidth(1), 
      child: Center(
        child: Stack(
          children: [
            Image.asset(Assets.breakingBad,fit: BoxFit.cover,),
            TransparentEffectBanner(w: screenWidth(1), h: screenHeight(0.7,)),
            Positioned(
              right: 0, 
              child: RotatedBox(
                quarterTurns: 2, 
                child: TransparentEffectBanner(w: screenWidth(1), h: screenHeight(0.7,))
              )
            ),
          ]
        ),
      )
    );
  }

  Widget rowIconButtons() {
    return Row(
      children: [
        Expanded(flex: 3, child: VerticalIconButton(iconText: "List", icon: Icons.add)),
        Expanded(flex: 2, child: playButton()),
        Expanded(flex: 3, child: VerticalIconButton(iconText: "İnfo", icon: Icons.info)),
      ],
    );
  }

  Widget top10Text() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: screenHeight(0.04),
        child: Text("Top 10 in the Netflix",
        style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget top10List() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(height: screenHeight(0.3),width: screenWidth(1.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Data.top10.length,
          itemBuilder: (context,index){
            return Stack(
              children: [
                SizedBox(
                  width: screenWidth(0.4),
                  child: Card(
                    color: Colors.black,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(Data.top10[index],fit: BoxFit.cover),
                    ),
                  ),
                ),
                Positioned(
                  right: screenWidth(0.15),
                  bottom: screenHeight(0.03) * -1,
                  child: SizedBox(width: screenWidth(0.4),
                    child: BorderedText(
                      child: Text((index + 1).toString(),
                        style: Theme.of(context).textTheme.headline1!
                        .copyWith(color: Colors.grey.shade900,fontWeight: FontWeight.w900),
                      ),
                      strokeColor: Colors.white,
                      strokeWidth: 4,
                    )
                  )
                ),
                TransparentEffectMovies(w: screenWidth(0.15), h: screenHeight(0.3))
              ],
            );
          },
        ),
      ),
    );
  }

  Widget tvSeriesText() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: screenHeight(0.04), 
        child: Text("TV Series",style: TextStyle(color: Colors.white,fontSize: 20.0, fontWeight: FontWeight.bold))
      ),
    );
  }

  Widget tvSeriesList() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(height: screenHeight(0.3),width: screenWidth(1.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Data.tvSeries.length,
          itemBuilder: (context,index){
            return Stack(
              children: [
                SizedBox(width: screenWidth(0.4), child: Card(color: Colors.black, child: ClipRRect(borderRadius: BorderRadius.circular(10), child: Image.asset(Data.tvSeries[index],fit: BoxFit.fill,)))),
                TransparentEffectMovies(w: screenWidth(0.15), h: screenHeight(0.3))
              ],
            );
          },
        ),
        ),
      );
  }

  Widget moviesText() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(height: screenHeight(0.04), child: Text("Movies",style: TextStyle(color: Colors.white,fontSize: 20.0, fontWeight: FontWeight.bold))),
      );
  }

  Widget moviesList() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(height: screenHeight(0.3),width: screenWidth(1.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Data.movies.length,
          itemBuilder: (context,index){
            return Stack(
              children: [
                SizedBox(width: screenWidth(0.4), child: Card(color: Colors.black, child: ClipRRect(borderRadius: BorderRadius.circular(10), child: Image.asset(Data.movies[index],fit: BoxFit.cover,)))),
                TransparentEffectMovies(w: screenWidth(0.15), h: screenHeight(0.3))
              ],
            );
          },
        ),
        ),
      );
  }


}







