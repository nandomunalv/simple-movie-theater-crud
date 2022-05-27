package com.example.spring.movietheater.service;

import com.example.spring.movietheater.model.Movie;

import java.util.List;

public interface IMovieService {

    List<Movie> getMovies();

    Movie getMovie(Long id);

    Movie createOrUpdateMovie(Movie movie);

}
