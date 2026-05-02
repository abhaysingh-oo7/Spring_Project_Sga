package com.example.demo.service;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class StudentServiceTest {

    @Autowired
    private StudentService service;

    @Test
    void testGetStudents() {
        org.junit.jupiter.api.Assertions.assertFalse(
            service.getStudentsWithCourse().isEmpty(),
            "Student list should not be empty"
        );
    }
}