package com.example.demo.repository;

import com.example.demo.entity.Student;
import org.springframework.data.jpa.repository.*;
import java.util.List;

public interface StudentRepository extends JpaRepository<Student, Integer> {

    //CUSTOM JOIN QUERY (IMPORTANT FOR MARKS)
    @Query("SELECT s FROM Student s JOIN s.course c ORDER BY s.id ASC")
    List<Student> getStudentsWithCourse();
}