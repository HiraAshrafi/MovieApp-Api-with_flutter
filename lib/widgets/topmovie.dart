import 'package:flutter/material.dart';
import 'package:movieapp/utils/text.dart';
import 'package:movieapp/widgets/description.dart';
class Topmovie extends StatelessWidget {
  final List topmovies;

  const Topmovie({Key? key, required this.topmovies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          modfie_text(text: 'Top Rate Movies', color: Colors.white, size: 26),
          SizedBox(height: 10,),
          Container(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topmovies.length,
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>Description(
                        name: topmovies[index]['title'],
                        bannerurl:  'https://image.tmdb.org/t/p/w500'+topmovies[index]['backdrop_path'],
                        posterurl:'https://image.tmdb.org/t/p/w500'+topmovies[index]['poster_path'],
                        description: topmovies[index]['overview'],
                        vote: topmovies[index]['vote_average'].toString(),
                        lunch_on: topmovies[index]['release_date'],
                        language: topmovies[index]['original_language'],

                      )
                    ));
                  },
                  child: Container(
                    width: 143,
                    child: Column(
                      children: [
                        Container(
                            height:200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://image.tmdb.org/t/p/w500' +
                                          topmovies[index]['poster_path']),
                                )
                            )
                        ),
                        Container(
                          child: modfie_text(text: topmovies[index]['title']!=null?
                          topmovies[index]['title']:'Loading..', size: 15,color: Colors.white,),
                        )

                      ],
                    ),
                  ),

                );
              },
            ),
          )
        ],
      ),
    );
  }
}
