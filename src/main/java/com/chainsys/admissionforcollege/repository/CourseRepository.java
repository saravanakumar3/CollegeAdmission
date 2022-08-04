package com.chainsys.admissionforcollege.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.admissionforcollege.model.Course;

public interface CourseRepository extends CrudRepository<Course, Integer> {
	  Course findById(int id);
	   Course save(Course course); 
	    void deleteById(int id);
	    List<Course> findAll();
	    List<Course> findBy();
}
