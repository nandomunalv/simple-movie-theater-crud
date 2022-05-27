package com.example.spring.movietheater.repository;

import com.example.spring.movietheater.model.Classification;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IClassificationRepository extends CrudRepository<Classification, Long> {
}
