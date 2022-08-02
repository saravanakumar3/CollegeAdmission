package com.chainsys.admissionforcollege.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.admissionforcollege.model.Student;
import com.chainsys.admissionforcollege.repository.StudentRepository;



@Service
public class StudentService {
    @Autowired
    private StudentRepository repo;

    public Student findByid(int id) {
        return repo.findById(id);
    }

    public Student save(Student student) {
        return repo.save(student);
    }

    public void deleteById(int id) {
        repo.deleteById(id);
    }

    public List<Student> getStudent() {
    	
        List<Student> listStudent = repo.findAll();
        return listStudent;
    }

	

}
