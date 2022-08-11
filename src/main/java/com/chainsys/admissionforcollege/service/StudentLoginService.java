package com.chainsys.admissionforcollege.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.admissionforcollege.model.Student;
import com.chainsys.admissionforcollege.repository.StudentLoginRepository;
@Service
public class StudentLoginService {
	@Autowired
    private StudentLoginRepository studentLoginRepository;
	  public Student getStudentDetailsByEmailAndPassword(String email, String password) {
		  Student student =studentLoginRepository.findByEmail(email);
		  if(!password.equals(student.getUserPassword())) {
		student=null;	  
		  }
	 		return student;
	 	}
	public Student save(Student thestudent) {
		 return studentLoginRepository.save(thestudent);	
	}
	

	

	 	}

