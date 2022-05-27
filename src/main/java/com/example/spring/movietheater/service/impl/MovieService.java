package com.example.spring.movietheater.service.impl;

import com.example.spring.movietheater.model.Movie;
import com.example.spring.movietheater.repository.IMovieRepository;
import com.example.spring.movietheater.service.IMovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovieService implements IMovieService {

    private final IMovieRepository movieRepository;

    @Autowired
    public MovieService(IMovieRepository movieRepository) {
        this.movieRepository = movieRepository;
    }

    @Override
    public List<Movie> getMovies() {
        return movieRepository.findAll();
    }

    @Override
    public Movie getMovie(Long id) {
        return movieRepository.findById(id).orElse(null);
    }

    @Override
    public Movie createOrUpdateMovie(Movie movie) {
        return movieRepository.save(movie);
    }
}
