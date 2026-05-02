package com.example.demo.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;
    private String duration;

    @OneToMany(mappedBy = "course")
    private List<Student> students;

    // Getters and Setters

    public int getId() {return id;}

    public void setId(int id) {this.id = id;}

    public String getName() {return name;}

    public String getDuration() {return duration;}

    
}
