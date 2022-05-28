package com.example.spring.movietheater.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "TB_MOVIE")
public class Movie implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    private String description;

    private String director;

    private String lineUp;

    @ManyToOne
    @JoinColumn(name = "genId")
    private Genre genre;

    @ManyToOne
    @JoinColumn(name = "classId")
    private Classification classification;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getLineUp() {
        return lineUp;
    }

    public void setLineUp(String lineUp) {
        this.lineUp = lineUp;
    }

    public Genre getGenre() {
        return genre;
    }

    public void setGenre(Genre genre) {
        this.genre = genre;
    }

    public Classification getClassification() {
        return classification;
    }

    public void setClassification(Classification classification) {
        this.classification = classification;
    }

    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", director='" + director + '\'' +
                ", lineUp='" + lineUp + '\'' +
                ", genre=" + genre.getDescription() +
                ", classification=" + classification.getDescription() +
                '}';
    }
}
