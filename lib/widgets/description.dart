import 'package:flutter/material.dart';
import 'package:movieapp/utils/text.dart';

class Description extends StatelessWidget {
  final String name,description,bannerurl,posterurl,vote,lunch_on,language;

  const Description({Key? key, required this.name, required this.description, required this.bannerurl, required this.posterurl, required this.vote, required this.lunch_on,required this.language}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 250,
              child: Stack(
                children: [
                  Positioned(child:Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(bannerurl,fit: BoxFit.cover,),
                    
                  )),
                  Positioned(
                    bottom: 10,

                      child: modfie_text(text: '⭐Average Rating -'+vote,size: 18,color: Colors.white,))
                ],
              ),

            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(10),
              child: modfie_text(text:  name != null ? name : 'Not Loaded',size: 24,color: Colors.white),


            ),
            Container(
              padding: EdgeInsets.all(10),
              child: modfie_text(text: 'Language-'+language,size:22 ,color: Colors.white,),


            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: modfie_text(text: 'Realising on-'+lunch_on,size: 18,color: Colors.white,)

            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 100,
                  child: Image.network(posterurl),

                ),

                Flexible(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: modfie_text(text: description,size: 18,color: Colors.white,),
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
