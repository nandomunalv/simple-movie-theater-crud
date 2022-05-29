package com.example.spring.movietheater.controller;

import com.example.spring.movietheater.model.Movie;
import com.example.spring.movietheater.repository.IClassificationRepository;
import com.example.spring.movietheater.repository.IGenreRepository;
import com.example.spring.movietheater.service.IMovieService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.websocket.server.PathParam;

@Controller
public class MovieController {

    private static final Logger log = LoggerFactory.getLogger(MovieController.class);

    private final IMovieService movieService;

    private final IGenreRepository genreRepository;

    private final IClassificationRepository classificationRepository;

    @Autowired
    public MovieController(IMovieService movieService, IGenreRepository genreRepository, IClassificationRepository classificationRepository) {
        this.movieService = movieService;
        this.genreRepository = genreRepository;
        this.classificationRepository = classificationRepository;
    }

    @GetMapping("/movies")
    public String listOfMovies(Model model) {
        model.addAttribute("listMovie", movieService.getMovies());
        return "movies";
    }
    @GetMapping("/movies/data-form")
    public String goToDataFormCreate(Model model) {
        var movie = new Movie();
        model.addAttribute("movieSelected", movie);
        model.addAttribute("listOfGenre", genreRepository.findAll());
        model.addAttribute("listOfClassification", classificationRepository.findAll());
        return "data-form";
    }

    @GetMapping("/movies/data-form/{id}")
    public String goToDataForm(@PathVariable Long id, Model model) {
        log.info(String.format("Path Variable is %s", id));
        var movieSelected = movieService.getMovie(id);
        model.addAttribute("movieSelected", movieSelected);
        model.addAttribute("listOfGenre", genreRepository.findAll());
        model.addAttribute("listOfClassification", classificationRepository.findAll());
        return "data-form";
    }

    @PostMapping("/movies/update")
    public String updatingMovie(@ModelAttribute("movieSelected") Movie movieSelected) {
        log.info(movieSelected.toString());
        movieService.createOrUpdateMovie(movieSelected);

        return "redirect:/movies";
    }

    @GetMapping("/movies/delete/{id}")
    public String deleteMovie(@PathVariable Long id) {
        movieService.deleteMovie(id);
        return "redirect:/movies";
    }
}
