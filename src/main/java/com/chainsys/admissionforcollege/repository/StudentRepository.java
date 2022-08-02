package com.chainsys.admissionforcollege.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.admissionforcollege.model.Student;

public interface StudentRepository extends CrudRepository<Student,Integer> {
	
   Student findById(int id);
    Student save(Student student); 
    void deleteById(int id);
    List<Student> findAll();
}


