package com.chainsys.admissionforcollege.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.admissionforcollege.model.Course;
import com.chainsys.admissionforcollege.repository.CourseRepository;



@Service
public class CourseService {
    @Autowired
    private CourseRepository Repository;

    public Course findByid(int id) {
        return Repository.findById(id);
    }

    public Course save(Course Course) {
        return Repository.save(Course);
    }

    public void deleteById(int id) {
    	Repository.deleteById(id);
    }

    public List<Course> getCourse() {
        List<Course> listCourse= Repository.findAll();
        System.out.println("Course");
        return listCourse;
    }

	

	

}