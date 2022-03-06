import 'package:flutter/material.dart';
import 'package:movieapp/utils/text.dart';
import 'package:movieapp/widgets/description.dart';
class Tvmovie extends StatelessWidget {
  final List tvmovie;

  const Tvmovie({Key? key, required this.tvmovie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          modfie_text(text: 'Popular TV Shows', color: Colors.white, size: 26),
          SizedBox(height: 10,),
          Container(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tvmovie.length,
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>Description(
                        name:  tvmovie[index]['name'],
                        bannerurl:  'https://image.tmdb.org/t/p/w500'+ tvmovie[index]['backdrop_path'],
                        posterurl:'https://image.tmdb.org/t/p/w500'+ tvmovie[index]['poster_path'],
                        description:  tvmovie[index]['overview'],
                        vote:  tvmovie[index]['vote_average'].toString(),
                        lunch_on:  tvmovie[index]['first_air_date'],
                        language: tvmovie[index]['original_language'],
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
                                          tvmovie[index]['poster_path']),
                                )
                            )
                        ),
                        Container(
                          child: modfie_text(text: tvmovie[index]['original_name']!=null?
                          tvmovie[index]['original_name']:'Loading..', size: 15,color: Colors.white,),
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
