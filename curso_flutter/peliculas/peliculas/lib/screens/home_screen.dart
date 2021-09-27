import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:peliculas/providers/providers.dart';
import 'package:peliculas/search/search_delegate.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    //print(moviesProvider.onDisplayMovies);

    return Scaffold(
        appBar: AppBar(
          title: Text('Peliculas en cine'),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () =>
                  showSearch(context: context, delegate: MovieSearchDelegate()),
              icon: Icon(Icons.search_outlined),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            //Tarjetas principales
            CardSwiper(movies: moviesProvider.onDisplayMovies),
            //Slider de peliculas
            MovieSlider(
                movies: moviesProvider.popularMovies,
                title: 'Populares!!',
                onNextPage: () {
                  moviesProvider.getPopularMovies();
                }),
          ]),
        ));
  }
}
