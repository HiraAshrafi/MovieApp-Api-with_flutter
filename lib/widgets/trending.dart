import 'package:flutter/material.dart';
import 'package:movieapp/utils/text.dart';
import 'package:movieapp/widgets/description.dart';
class Trendingmovie extends StatelessWidget {
  final List trendingmov;

  const Trendingmovie({Key? key, required this.trendingmov}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          modfie_text(text: 'Trending Movies', color: Colors.white, size: 26),
          SizedBox(height: 10,),
          Container(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trendingmov.length,
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>Description(
                        name: trendingmov[index]['title'],
                        bannerurl: 'https://image.tmdb.org/t/p/w500'+trendingmov[index]['backdrop_path'],
                        posterurl:'https://image.tmdb.org/t/p/w500'+trendingmov[index]['poster_path'] ,
                        description: trendingmov[index]['overview'],
                        vote: trendingmov[index]['vote_average'].toString(),
                        lunch_on: trendingmov[index]['release_date'],
                        language: trendingmov[index]['original_language'],


                        )
                    ));
                  },

                  child:  trendingmov[index]['title']!=null?Container(
                    width: 143,
                    child: Column(
                      children: [
                        Container(
                          height:200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                    'https://image.tmdb.org/t/p/w500' +
                    trendingmov[index]['poster_path']),
                              )
                            )
                          ),
                        Container(
                          child: modfie_text(text: trendingmov[index]['title']!=null?
                            trendingmov[index]['title']:'Loading..', size: 15,color: Colors.white,),
                        )

                      ],
                    ),
                  ):Container(),

                );

              },
            ),
          )
        ],
      ),
    );
  }
}
