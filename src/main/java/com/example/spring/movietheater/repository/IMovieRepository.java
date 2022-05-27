package com.example.spring.movietheater.repository;

import com.example.spring.movietheater.model.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IMovieRepository extends JpaRepository<Movie, Long> {
}
