package com.example.demo.controller;

import com.example.demo.entity.Student;
import com.example.demo.entity.Course;
import com.example.demo.service.StudentService;
import com.example.demo.service.CourseService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private CourseService courseService;

    // Home redirect
    @GetMapping("/")
    public String home() {
        return "redirect:/students";
    }
    @GetMapping("/students")
    public String listStudents(Model model) {
        model.addAttribute("students", studentService.getStudentsWithCourse());
        return "student-list";
    }
    @GetMapping("/addStudent")
    public String showForm(Model model) {
        model.addAttribute("student", new Student());
        model.addAttribute("courses", courseService.getAllCourses());
        return "student-form";
    }
    @PostMapping("/saveStudent")
    public String saveStudent(@ModelAttribute Student student, @RequestParam("course.id") int courseId) {
        Course course = new Course();
        course.setId(courseId);
        student.setCourse(course);
        studentService.saveStudent(student);
        return "redirect:/students";
    }
    @GetMapping("/editStudent/{id}")
    public String editStudent(@PathVariable int id, Model model) {
        model.addAttribute("student", studentService.getStudentById(id));
        model.addAttribute("courses", courseService.getAllCourses());
        return "student-form";
    }
}