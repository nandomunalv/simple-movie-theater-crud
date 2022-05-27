package com.example.spring.movietheater.controller;

import com.example.spring.movietheater.service.IMovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Date;

@Controller
public class MovieController {

    private final IMovieService movieService;

    @Autowired
    public MovieController(IMovieService movieService) {
        this.movieService = movieService;
    }

    @GetMapping("/movies")
    public String listOfMovies(Model model) {
        model.addAttribute("movies", movieService.getMovies());
        return "movies";
    }
}
