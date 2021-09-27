import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  static final pageName = 'avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.aboutespanol.com/thmb/8uVbP5rnCi8WOs0aemZ9paf9whA=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/StanLee-5b3951aa4cedfd003651f497.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://scontent.feze11-1.fna.fbcdn.net/v/t1.6435-9/129711076_224789719019105_4523049733879340262_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFE0rfLACd9YiYTpd-5r3cy2XKOYxURHarZco5jFREdqlMAc16cb2GFx_PpjA_o9UA&_nc_ohc=eV21RpOioSAAX9IlkiE&tn=2z9Czfjm-yt4DwSW&_nc_ht=scontent.feze11-1.fna&oh=b563a3dd73a6429cbfaad706c2fad0d1&oe=61700328'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
