package com.example.spring.movietheater.repository;

import com.example.spring.movietheater.model.Genre;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IGenreRepository extends CrudRepository<Genre, Long> {
}
