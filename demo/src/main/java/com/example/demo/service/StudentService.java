package com.example.demo.service;

import com.example.demo.entity.Student;
import com.example.demo.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {

    @Autowired
    private StudentRepository repo;

    public List<Student> getAllStudents() {
        return repo.findAll();
    }
    public Student saveStudent(Student s) {
        try {
            return repo.save(s);
        } catch (Exception e) {
            throw new RuntimeException("Error saving student: " + e.getMessage());
        }
    }
    public Student getStudentById(int id) {
        return repo.findById(id).orElse(null);
    }
    public List<Student> getStudentsWithCourse() {
        return repo.getStudentsWithCourse();
    }
}