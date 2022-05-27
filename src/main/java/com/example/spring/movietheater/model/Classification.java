package com.example.spring.movietheater.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "TB_CLASSIFICATION")
public class Classification implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String description;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
